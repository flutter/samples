#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "add_to_app/android_view/flutter_module_using_plugin"
    "add_to_app/books/flutter_module_books"
    "add_to_app/fullscreen/flutter_module"
    "add_to_app/multiple_flutters/multiple_flutters_module"
    "add_to_app/plugin/flutter_module_using_plugin"
    "add_to_app/prebuilt_module/flutter_module"
    "analysis_defaults"
    "android_splash_screen"
    "animations"
    "asset_transformation"
    "background_isolate_channels"
     "code_sharing/client"
    # TODO(ewindmill): The integration tests are failing
    # "code_sharing/server"
     "code_sharing/shared"
    "compass_app/app"
    # TODO(ewindmill): The integration tests are failing
    # "compass_app/server"
    "context_menus"
    "date_planner"
    "deeplink_store_example"
    "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    "dynamic_theme"
    "flutter_maps_firestore"
    "form_app"
    "game_template"
    "gemini_tasks"
    "google_maps"
    "infinite_list"
    "ios_app_clip"
    # TODO(ewindmill): replace deprecated activeColor with activeThumbColor in 3.33
    # "isolate_example"
    # TODO(ewindmill) - RadioGroup api changed.
    # "material_3_demo"
    "navigation_and_routing"
    # TODO(domesticmouse): Angle brackets will be interpreted as HTML.
    # "pedometer"
    "pedometer/example"
    "place_tracker"
    "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    "simple_shader"
    "simplistic_calculator"
     "simplistic_editor"
    "testing_app"
    "veggieseasons"
    "web_embedding/element_embedding_demo"
)

ci_projects "master" "${PROJECT_NAMES[@]}"

echo "-- Success --"
