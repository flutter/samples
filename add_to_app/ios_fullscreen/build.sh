#!/bin/sh

###############################################################################
# A convenience script that runs through the setup tasks for building this
# sample.  A description of the steps can be found at:
# https://github.com/flutter/samples/blob/master/add_to_app/README.md
###############################################################################

WHOAMI=`whoami`

cd ../flutter_module
sed -i .backup 's/dev.flutter.example.flutterModule/dev.flutter.'"$WHOAMI"'.flutterModule/g' pubspec.yaml
flutter pub get
cd -
pod install
xcodebuild -workspace ./IOSFullScreen.xcworkspace -scheme IOSFullScreen -sdk iphonesimulator
