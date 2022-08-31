#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "add_to_app/books/flutter_module_books"
    # TODO(domesticmouse): headline5 deprecated
    # "add_to_app/fullscreen/flutter_module"
    # TODO(domesticmouse): headline4 is deprecated
    # "add_to_app/multiple_flutters/multiple_flutters_module"
    # TODO(domesticmouse): headline5 deprecated
    # "add_to_app/plugin/flutter_module_using_plugin"
    # TODO(domesticmouse): headline5 deprecated
    # "add_to_app/prebuilt_module/flutter_module"
    # TODO(domesticmouse): headline4 is deprecated
    # "android_splash_screen"
    # TODO(domesticmouse): headline4 is deprecated
    # "animations"
    "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    # TODO(domesticmouse): headline5 deprecated
    # "experimental/federated_plugin/federated_plugin"
    "experimental/web_dashboard"
    # Needs a reformat to work on master
    # "experimental/linting_tool"
    "experimental/material_3_demo"
    "flutter_maps_firestore"
    # bodyText1 is deprecated
    # "form_app"
    # TODO(domesticmouse): bodyText2 is deprecated
    # "game_template"
    # TODO(domesticmouse): headline6 is deprecated
    # "infinite_list"
    "ios_app_clip"
    "isolate_example"
    # TODO(domesticmouse): bodyText2 is deprecated
    # "jsonexample"
    "material_3_demo"
    # TODO(domesticmouse): headline4 is deprecated
    # "navigation_and_routing"
    "null_safety/null_safe_app"
    "null_safety/null_unsafe_app"
    "place_tracker"
    "platform_channels"
    # TODO(domesticmouse): bodyText2 is deprecated
    # "platform_design"
    # TODO(domesticmouse): subtitle2 is deprecated
    # "platform_view_swift"
    # TODO(domesticmouse): headline4 is deprecated
    # "provider_counter"
    "simplistic_editor"
    "testing_app"
    "veggieseasons"
)

ci_projects "master" "${PROJECT_NAMES[@]}"

echo "-- Success --"
