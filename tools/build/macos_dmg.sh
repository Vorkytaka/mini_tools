#!/bin/bash
set -euo pipefail

# Build the app
fvm flutter clean
fvm flutter pub get
fvm flutter build macos --release

# Sign the app
echo "Signing the app..."
SIGN_ID="Developer ID Application: Konstantin Dovnar (BD4KPFJ9C6)"
codesign --deep --force --verbose --options runtime --entitlements macos/Runner/Release.entitlements --sign "$SIGN_ID" build/macos/Build/Products/Release/miniTools.app

# Create a temporary zip for notarization of the app itself
echo "Creating temporary zip for app notarization..."
ditto -c -k --keepParent build/macos/Build/Products/Release/miniTools.app miniTools_app.zip

# Submit app for notarization
echo "Submitting app for notarization..."
xcrun notarytool submit miniTools_app.zip --wait --apple-id vorkytaka@icloud.com --password "$MINI_TOOLS_PASS" --team-id "BD4KPFJ9C6"

# Staple the app
echo "Stapling the app..."
xcrun stapler staple build/macos/Build/Products/Release/miniTools.app

# Now create the DMG with the notarized app
echo "Creating DMG..."
rm -f miniTools.dmg
create-dmg \
  --volname "miniTools" \
  --window-size 500 300 \
  --background "./tools/build/background.png" \
  --icon miniTools.app 130 110 \
  --app-drop-link 360 110 \
  miniTools.dmg \
  build/macos/Build/Products/Release/miniTools.app

# Sign the DMG
echo "Signing the DMG..."
codesign --force --verbose --sign "$SIGN_ID" miniTools.dmg

# Notarize the DMG
echo "Sending DMG for notarization..."
xcrun notarytool submit miniTools.dmg --wait --apple-id vorkytaka@icloud.com --password "$MINI_TOOLS_PASS" --team-id "BD4KPFJ9C6"

# Staple the DMG
echo "Stapling the DMG..."
xcrun stapler staple miniTools.dmg

# Clean up
rm -f miniTools_app.zip

# Verify both are properly notarized
echo "Verifying app notarization..."
codesign -vv --display build/macos/Build/Products/Release/miniTools.app

echo "Verifying DMG notarization..."
codesign -vv --display miniTools.dmg
