#!/bin/bash

set -e

echo "Pre-caching ios artifacts, such as the Flutter.framework"
flutter precache --no-web --no-linux --no-windows --no-fuchsia --no-android --no-macos

echo "Fetching dependencies and building 'flutter_module'."
pushd add_to_app/flutter_module
flutter packages get
flutter build ios-framework --xcframework --output="$(pwd)/../ios_using_prebuilt_module/Flutter"
popd

echo "Fetching dependencies for 'flutter_module_using_plugin'."
pushd add_to_app/flutter_module_using_plugin
flutter packages get
popd


echo "== Testing 'add_to_app/ios_fullscreen' on Flutter's $FLUTTER_VERSION channel =="
pushd "add_to_app/ios_fullscreen"

pod install

xcodebuild -workspace "IOSFullScreen.xcworkspace" \
-scheme "IOSFullScreen" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Debug | xcpretty

xcodebuild -workspace "IOSFullScreen.xcworkspace" \
-scheme "IOSFullScreen" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Release \
-destination generic/platform=iOS | xcpretty

popd

echo "== Testing 'add_to_app/ios_using_plugin' on Flutter's $FLUTTER_VERSION channel =="
pushd "add_to_app/ios_using_plugin"

pod install

xcodebuild -workspace "IOSUsingPlugin.xcworkspace" \
-scheme "IOSUsingPlugin" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Debug | xcpretty

xcodebuild -workspace "IOSUsingPlugin.xcworkspace" \
-scheme "IOSUsingPlugin" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Release \
-destination generic/platform=iOS | xcpretty

popd

echo "== Testing 'add_to_app/ios_using_prebuilt_module' on Flutter's $FLUTTER_VERSION channel =="
pushd "add_to_app/ios_using_prebuilt_module"

xcodebuild CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Debug | xcpretty

xcodebuild CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- \
COMPILER_INDEX_STORE_ENABLE=NO CONFIGURATION=Release \
-destination generic/platform=iOS | xcpretty

popd


echo "-- Success --"
