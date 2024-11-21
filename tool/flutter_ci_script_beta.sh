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
    "code_sharing/server"
    "code_sharing/shared"
#    @ewindmill: withOpacity is deprecated
#    "compass_app/app"
#    "compass_app/server"
    "context_menus"
    "deeplink_store_example"
    "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    "dynamic_theme"
    "experimental/federated_plugin/federated_plugin"
    "experimental/federated_plugin/federated_plugin/example"
    "experimental/federated_plugin/federated_plugin_macos"
    "experimental/federated_plugin/federated_plugin_platform_interface"
    "experimental/federated_plugin/federated_plugin_web"
    "experimental/federated_plugin/federated_plugin_windows"
    # TODO(domesticmouse): Angle brackets will be interpreted as HTML.
    # "experimental/pedometer"
    "experimental/pedometer/example"
    "experimental/varfont_shader_puzzle"
    # TODO(ewindmill): whereNotNull deprecated in dart:collection
    # "experimental/web_dashboard"
    "flutter_maps_firestore"
    "form_app"
    "game_template"
    "gemini_tasks"
    "google_maps"
    "infinite_list"
    #  TODO(domesticmouse): The import of 'package:flutter/material.dart' is unnecessary because all of the used elements are also provided by the import of 'package:flutter/cupertino.dart'.
    # "ios_app_clip"
    "isolate_example"
    # TODO(ewindmill): Color.red is deprecated and should be Color.r (same for green and blue)
    # "material_3_demo"
    "navigation_and_routing"
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
    "web/_tool"
    "web/samples_index"
)

ci_projects "beta" "${PROJECT_NAMES[@]}"

echo "-- Success --"
