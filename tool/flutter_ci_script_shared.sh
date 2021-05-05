function ci_projects () {
    local channel="$1"
    shift
    local arr=("$@")
    for PROJECT_NAME in "${arr[@]}"
    do
        echo "== Testing '${PROJECT_NAME}' on Flutter's $channel channel =="
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
        if [ -d "test" ]
        then
            flutter test
        fi

        popd
    done
}
