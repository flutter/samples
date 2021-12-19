#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint federated_plugin_macos.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'federated_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
  No-op implementation of the url_launcher plugin to avoid build issues on macos.
    https://github.com/flutter/flutter/issues/46618
                         DESC
    s.homepage         = 'http://example.com'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Your Company' => 'email@example.com' }
    s.source           = { :path => '.' }
    s.source_files = 'Classes/**/*'
    s.public_header_files = 'Classes/**/*.h'

    s.platform = :osx
    s.osx.deployment_target = '10.11'
  end
