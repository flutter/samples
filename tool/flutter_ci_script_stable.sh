#!/bin/bash

set -e

declare -ar PROJECT_NAMES=(
    "add_to_app/android_view/flutter_module_using_plugin" \
    "add_to_app/fullscreen/flutter_module" \
    "add_to_app/prebuilt_module/flutter_module" \
    "add_to_app/plugin/flutter_module_using_plugin" \
    "add_to_app/books/flutter_module_books" \
    "animations" \
    "flutter_maps_firestore" \
    "infinite_list" \
    "ios_app_clip" \
    "isolate_example" \
    "jsonexample" \
    "place_tracker" \
    "platform_channels" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    "provider_shopper" \
    "testing_app" \
    "null_safety/null_safe_app" \
    "null_safety/null_unsafe_app" \
    "veggieseasons" \
)

for PROJECT_NAME in "${PROJECT_NAMES[@]}"
do
    echo "== Testing '${PROJECT_NAME}' on Flutter's stable channel =="
    pushd "${PROJECT_NAME}"

    # Grab packages.
    flutter pub get

    # Run the analyzer to find any static analysis issues.
    flutter analyze

    # Reformat the web plugin registrant, if necessary.
    if [ -f "lib/generated_plugin_registrant.dart" ]
    then
        echo "Renaming $(pwd)/lib/generated_plugin_registrant.dart"
        flutter format "lib/generated_plugin_registrant.dart"
    fi

    # Run the formatter on all the dart files to make sure everything's linted.
    flutter format -n --set-exit-if-changed .

    # Run the actual tests.
    flutter test

    popd
done

echo "-- Success --"
