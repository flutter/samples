#!/bin/bash

set -e

# Backs up one directory at a time, looking for one called "flutter". Once it
# finds that directory, an absolute path to it is returned.
function getFlutterPath() {
    local path=""
    local counter=0

    while [[ "${counter}" -lt 10 ]]; do
        [ -d "${path}flutter" ] && echo "$(pwd)/${path}flutter" && return 0
        let counter++
        path="${path}../"
    done
}

localSdkPath=$(getFlutterPath)

if [ -z "$localSdkPath" ]
then
    echo "Failed to find the Flutter SDK!."
    exit 1
fi

echo "Flutter SDK found at ${localSdkPath}"

echo "Pre-caching ios artifacts, such as the Flutter.framework"
"${localSdkPath}/bin/flutter" precache --no-web --no-linux --no-windows --no-fuchsia --no-android

echo "Fetching dependencies and building 'flutter_module'."
pushd add_to_app/flutter_module
"${localSdkPath}/bin/flutter" packages get
"${localSdkPath}/bin/flutter" build ios-framework --output=../ios_using_prebuilt_module/Flutter
popd

echo "Fetching dependencies for 'flutter_module_using_plugin'."
pushd add_to_app/flutter_module_using_plugin
"${localSdkPath}/bin/flutter" packages get
popd


echo "== Testing 'add_to_app/ios_fullscreen' on Flutter's $FLUTTER_VERSION channel =="
pushd "add_to_app/ios_fullscreen"

pod install

xcodebuild -quiet -workspace "IOSFullScreen.xcworkspace" \
-scheme "IOSFullScreen" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Debug

xcodebuild -quiet -workspace "IOSFullScreen.xcworkspace" \
-scheme "IOSFullScreen" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Release

popd

echo "== Testing 'add_to_app/ios_using_plugin' on Flutter's $FLUTTER_VERSION channel =="
pushd "add_to_app/ios_using_plugin"

pod install

xcodebuild -quiet -workspace "IOSUsingPlugin.xcworkspace" \
-scheme "IOSUsingPlugin" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Debug

xcodebuild -quiet -workspace "IOSUsingPlugin.xcworkspace" \
-scheme "IOSUsingPlugin" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Release

popd

echo "== Testing 'add_to_app/ios_using_prebuilt_module' on Flutter's $FLUTTER_VERSION channel =="
pushd "add_to_app/ios_using_prebuilt_module"

xcodebuild -quiet CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Debug

xcodebuild -quiet CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Release

popd


echo "-- Success --"
