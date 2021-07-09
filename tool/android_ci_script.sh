#!/bin/bash

set -e

flutter doctor -v

echo "Fetching dependencies and building 'prebuilt_module/flutter_module/'."
pushd add_to_app/prebuilt_module/flutter_module/
flutter packages get
flutter build aar
popd

echo "Fetching dependencies for 'plugin/flutter_module_using_plugin'."
pushd add_to_app/plugin/flutter_module_using_plugin
flutter packages get
popd

echo "Fetching dependencies for 'fullscreen/'."
pushd add_to_app/fullscreen/flutter_module
flutter packages get
popd

echo "Fetching dependencies for 'multiple_flutters/'."
pushd add_to_app/multiple_flutters/multiple_flutters_module
flutter packages get
popd

declare -ar ANDROID_PROJECT_NAMES=(
    "add_to_app/fullscreen/android_fullscreen" \
    "add_to_app/plugin/android_using_plugin" \
    "add_to_app/multiple_flutters/multiple_flutters_android" \
    "add_to_app/prebuilt_module/android_using_prebuilt_module" \
)

for PROJECT_NAME in "${ANDROID_PROJECT_NAMES[@]}"
do
    echo "== Testing '${PROJECT_NAME}' on Flutter's stable channel =="
    pushd "${PROJECT_NAME}"

    ./gradlew --stacktrace assembleDebug
    ./gradlew --stacktrace assembleRelease

    popd
done

# If the credentials don't exist, this script isn't being run from within the
# flutter/samples repo. Rather than throw an error, allow the test to pass
# successfully.
if [ ! -f "svc-keyfile.json" ]
then
    echo "Keyfile for Firebase Test Lab not found. Skipping integration tests."
    echo "-- Success --"
    exit 0
fi

# At this time, espresso tests only exist for android_fullscreen. These will
# eventually be rolled out to each Android project and included in the loop
# above.
echo "== Espresso testing 'android_fullscreen' on Flutter's ${FLUTTER_VERSION} channel =="
pushd "add_to_app/fullscreen/android_fullscreen"
./gradlew app:assembleAndroidTest
./gradlew app:assembleDebug -Ptarget=../flutter_module/test_driver/example.dart
gcloud auth activate-service-account --key-file=../../svc-keyfile.json
gcloud --quiet config set project test-lab-project-ccbec
gcloud firebase test android run --type instrumentation \
  --app app/build/outputs/apk/debug/app-debug.apk \
  --test app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk\
  --timeout 5m
popd

echo "== Run e2e test for testing_app =="
pushd "testing_app"
readonly APP_DIR=$(pwd)
flutter packages get
flutter build apk
pushd "android"
./gradlew app:assembleAndroidTest
./gradlew app:assembleRelease -Ptarget=${APP_DIR}/test/perf_test_e2e.dart
popd
gcloud auth activate-service-account --key-file=../svc-keyfile.json
gcloud --quiet config set project test-lab-project-ccbec
gcloud firebase test android run --type instrumentation \
  --app build/app/outputs/apk/release/app-release.apk \
  --test build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk \
  --timeout 5m
popd

echo "-- Success --"
