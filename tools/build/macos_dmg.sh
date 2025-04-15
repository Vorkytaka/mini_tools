# Docs
#
# To use this script call it from root of the repository, like:
# `./tools/build/macos_dmg.sh`
#
# If something goes wrong with notarytool, then use this command:
# `xcrun notarytool log ID_OF_ACTION --apple-id vorkytaka@icloud.com --password $MINI_TOOLS_PASS --team-id "BD4KPFJ9C6"`

fvm flutter clean
fvm flutter pub get
fvm flutter build macos

# sign the app
echo
echo "Signing the app..."
echo
SIGN_ID="Developer ID Application: Konstantin Dovnar (BD4KPFJ9C6)"
codesign --deep --force --verbose --options runtime --entitlements macos/Runner/Release.entitlements --sign "$SIGN_ID" build/macos/Build/Products/Release/miniTools.app

# create dmg
# brew install create-dmg
echo
echo "Creating dmg..."
echo
rm -f miniTools.dmg
create-dmg \
  --volname "miniTools" \
  --window-size 500 300 \
  --background "./tools/build/background.png" \
  --icon miniTools.app 130 110 \
  --app-drop-link 360 110 \
  miniTools.dmg \
  build/macos/Build/Products/Release/miniTools.app

# sign the dmg
echo
echo "Signing the dmg..."
echo
codesign --force --verbose --sign "$SIGN_ID" miniTools.dmg

# send to apple for notarization
DEV_EMAIL=vorkytaka@icloud.com
TEAM_ID=BD4KPFJ9C6

echo
echo "Sending to apple for notarization..."
echo
xcrun notarytool submit miniTools.dmg --wait --apple-id $DEV_EMAIL --password "$MINI_TOOLS_PASS" --team-id "$TEAM_ID"

# download notarization result and apply to the dmg
echo
echo "Run stapler..."
echo
xcrun stapler staple miniTools.dmg