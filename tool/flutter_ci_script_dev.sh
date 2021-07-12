#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    # TODO(redbrogdon) Replace use of mockito
    # "add_to_app/books/flutter_module_books"
    "add_to_app/fullscreen/flutter_module"
    "add_to_app/multiple_flutters/multiple_flutters_module"
    "add_to_app/plugin/flutter_module_using_plugin"
    "add_to_app/prebuilt_module/flutter_module"
    # TODO(redbrogdon): Update once this PR makes it to release:
    # https://github.com/flutter/flutter/pull/79860
    # "animations"
    # TODO(redbrogdon): Restore during next beta branch merge.
    # "experimental/desktop_photo_search"
    "experimental/federated_plugin/federated_plugin"
    # TODO(redbrogdon): Restore during next beta branch merge.
    # "experimental/web_dashboard"
    "experimental/linting_tool"
    "flutter_maps_firestore"
    "infinite_list"
    "ios_app_clip"
    # TODO(redbrogdon): Update once this PR makes it to release:
    # https://github.com/flutter/flutter/pull/79860
    # "isolate_example"
    "jsonexample"
    "null_safety/null_safe_app"
    "null_safety/null_unsafe_app"
    "place_tracker"
    "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    "testing_app"
    # TODO(redbrogdon): Restore during next beta branch merge.
    # "veggieseasons"
)

ci_projects "dev" "${PROJECT_NAMES[@]}"

echo "-- Success --"
