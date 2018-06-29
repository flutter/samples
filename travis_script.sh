set -e

echo "== Testing 'jsonexample' on Flutter's $FLUTTER_VERSION channel =="

pushd jsonexample
../flutter/bin/flutter test
popd

echo "-- Success --"
