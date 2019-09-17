#!/bin/bash
set -e

echo "Testing flutter_module"
cd flutter_module
flutter test
cd ..

echo "Testing flutter_module_using_plugin"
cd flutter_module_using_plugin
flutter test
cd ..

echo "Testing android_fullscreen"
cd android_fullscreen
./gradlew build
cd ..
