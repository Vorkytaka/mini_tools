cd packages/mini_tea_time_travel_devtools_extension;
fvm flutter pub get;
fvm dart run devtools_extensions build_and_copy --source=. --dest=../mini_tea_time_travel/extension/devtools
fvm dart run devtools_extensions validate --package=../mini_tea_time_travel