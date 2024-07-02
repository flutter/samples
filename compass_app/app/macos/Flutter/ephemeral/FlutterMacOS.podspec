#
# This podspec is NOT to be published. It is only used as a local source!
# This is a generated file; do not edit or check into version control.
#

Pod::Spec.new do |s|
  s.name             = 'FlutterMacOS'
  s.version          = '1.0.0'
  s.summary          = 'A UI toolkit for beautiful and fast apps.'
  s.homepage         = 'https://flutter.dev'
  s.license          = { :type => 'BSD' }
  s.author           = { 'Flutter Dev Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :git => 'https://github.com/flutter/engine', :tag => s.version.to_s }
  s.osx.deployment_target = '10.14'
  # Framework linking is handled by Flutter tooling, not CocoaPods.
  # Add a placeholder to satisfy `s.dependency 'FlutterMacOS'` plugin podspecs.
  s.vendored_frameworks = 'path/to/nothing'
end
