set -e

declare -a  PROJECT_NAMES=(
	"jsonexample" \
	"shrine" \
)

for PROJECT_NAME in "${PROJECT_NAMES[@]}"
do
	echo "== Testing '${PROJECT_NAME}' on Flutter's $FLUTTER_VERSION channel =="
	pushd "${PROJECT_NAME}"
	../flutter/bin/flutter test
	popd
done

echo "-- Success --"
