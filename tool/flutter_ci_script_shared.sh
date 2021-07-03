function ci_projects () {
    local channel="$1"

    # The `-n` option has been replaced with a more flexible `-o` for "output"
    # in dev.
    if [ $channel == "dev" ]; then
        format_option="-o none"
    else
        format_option="-n"
    fi

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

        # Run the formatter on all the dart files to make sure everything's linted.
        flutter format $format_option --set-exit-if-changed .

        # Run the actual tests.
        if [ -d "test" ]
        then
            flutter test
        fi

        popd
    done
}
