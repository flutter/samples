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
        dart analyze

        # Run the formatter on all the dart files to make sure everything's linted.
        dart format --output none --set-exit-if-changed .

        # Run the actual tests.
        if [ -d "test" ]
        then
            flutter test
        fi

        popd
    done
}
