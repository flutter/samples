#!/bin/bash

set -e

declare -ar PROJECT_NAMES=(
    "add_to_app/flutter_module" \
    "add_to_app/flutter_module_using_plugin" \
    "add_to_app/flutter_module_books" \
    "animations" \
    # Tracking issue: https://github.com/flutter/samples/issues/652
    # "flutter_maps_firestore" \
    "infinite_list" \
    "ios_app_clip" \
    # Tracking issue: https://github.com/flutter/samples/issues/653
    # "isolate_example" \
    "jsonexample" \
    # Tracking issue: https://github.com/flutter/samples/issues/655
    # "place_tracker" \
    "platform_channels" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    "provider_shopper" \
    "testing_app" \
    "veggieseasons" \
)

for PROJECT_NAME in "${PROJECT_NAMES[@]}"
do
    echo "== Testing '${PROJECT_NAME}' on Flutter's dev channel =="
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
