#
# Be sure to run `pod lib lint UserAA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MAFNavigationRegistry'
  s.version          = '1.0.0'
  s.summary          = 'A short description of MAFNavigationRegistry.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'This description is used to generate tags and improve search results.'

  s.homepage         = 'https://git@github.com/nhnam/MAFNavigationRegistry'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nam Ng' => 'nhnam.develop@gmail.com' }
  s.source           = { :git => 'https://github.com/nammr/MAFNavigationRegistry.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'

  s.source_files = 'MAFNavigationRegistry/**/*.{h,m,mm,swift}'
  s.resources = 'MAFNavigationRegistry/**/*.{xib}'
  
  # s.resource_bundles = {
  #   'UserAA' => ['UserAA/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
