#
# Be sure to run `pod lib lint RetDemo01.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  def self.smart_version
    tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
    if $?.success? then tag else "0.0.1" end
  end

  s.name             = 'flutter_plugin05'
  s.version          = smart_version
  s.summary          = 'A short description of RetDemo01.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Halen/flutter_plugin05'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Halen' => 'jiang293172@163.com' }
  s.source           = { :git => 'https://github.com/JIANG293172/flutter_plugin05.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = "ios/Flutter/*.plist","ios/Classes/**/*"

 s.vendored_frameworks = ["ios/Flutter/App.framework","ios/Flutter/Flutter.framework"]

  s.resource_bundles = {
    'flutter_plugin05' => ['flutter_plugin05/ios/Assets/*.{png,xib,bundle,xcassets}']
  }
  
  # s.resource_bundles = {
  #   'flutter_plugin05' => ['flutter_plugin05/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  #s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
