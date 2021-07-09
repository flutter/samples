#!/bin/bash

set -e

flutter doctor -v

###############################################################################
# Helper functions
###############################################################################

# Runs `packages get` on given flutter module.
# $1 = path to flutter module
function flutter_packages_get() {
  echo "Fetching dependencies and building '$1'."
  pushd $1
  flutter packages get
  popd
}

# Runs xcode build for Debug and Release.
# $1 = path to directory containing the xcode project
# $2 = name of the xcworkspace
# $3 = name of the scheme
function build() {
  echo "== Testing '$1' on Flutter's $FLUTTER_VERSION channel =="
  pushd "$1"

  pod install

  xcodebuild -workspace "$2" \
  -scheme "$3" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
  CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
  COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Debug | xcpretty

  xcodebuild -workspace "$2" \
  -scheme "$3" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
  CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
  COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Release \
  -destination generic/platform=iOS | xcpretty

  popd
}

###############################################################################
# Building preconditions
###############################################################################

echo "Pre-caching ios artifacts, such as the Flutter.framework"
flutter precache --no-web --no-linux --no-windows --no-fuchsia --no-android --no-macos

echo "Fetching dependencies and building 'prebuilt_module/flutter_module'."
pushd add_to_app/prebuilt_module/flutter_module
flutter packages get
flutter build ios-framework --xcframework --output="$(pwd)/../ios_using_prebuilt_module/Flutter"
popd

flutter_packages_get "add_to_app/books/flutter_module_books"
flutter_packages_get "add_to_app/fullscreen/flutter_module"
flutter_packages_get "add_to_app/multiple_flutters/multiple_flutters_module"
flutter_packages_get "add_to_app/plugin/flutter_module_using_plugin"

###############################################################################
# Build projects
###############################################################################

build "add_to_app/books/ios_books" "IosBooks.xcworkspace" "IosBooks"
build "add_to_app/fullscreen/ios_fullscreen" "IOSFullScreen.xcworkspace" "IOSFullScreen"
build "add_to_app/multiple_flutters/multiple_flutters_ios" "MultipleFluttersIos.xcworkspace" "MultipleFluttersIos"
build "add_to_app/plugin/ios_using_plugin" "IOSUsingPlugin.xcworkspace" "IOSUsingPlugin"

echo "== Testing 'add_to_app/prebuilt_module/ios_using_prebuilt_module' on Flutter's $FLUTTER_VERSION channel =="
pushd "add_to_app/prebuilt_module/ios_using_prebuilt_module"

xcodebuild CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Debug | xcpretty

xcodebuild CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Release \
-destination generic/platform=iOS | xcpretty

popd

echo "-- Success --"
