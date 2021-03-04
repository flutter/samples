#!/bin/bash

set -e

declare -ar PROJECT_NAMES=(
    "add_to_app/fullscreen/flutter_module" \
    "add_to_app/prebuilt_module/flutter_module" \
    "add_to_app/plugin/flutter_module_using_plugin" \
    "add_to_app/books/flutter_module_books" \
    "add_to_app/multiple_flutters/multiple_flutters_module" \
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
    # Tracking issue: https://github.com/flutter/samples/issues/656
    # "platform_channels" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    # Tracking issue: https://github.com/flutter/samples/issues/657
    # "provider_shopper" \
    # Tracking issue: https://github.com/flutter/samples/issues/658
    # "testing_app" \
    "experimental/desktop_photo_search" \
    # https://github.com/flutter/samples/issues/659
    # "experimental/federated_plugin/federated_plugin" \
    "null_safety/null_safe_app" \
    "null_safety/null_unsafe_app" \
    "experimental/web_dashboard" \
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
    if [ -d "test"]
    then
        flutter test
    fi

    popd
done

echo "-- Success --"
