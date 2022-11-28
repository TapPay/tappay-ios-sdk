#
#  Be sure to run `pod spec lint TPDirect.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name               = "tappay-ios-sdk"
  spec.version            = "1.0.0"
  spec.platform = :ios, '11.0'
  spec.ios.deployment_target = '11.0'
  spec.summary            = "TPDirect SDK"
  spec.description        = "TPDirect SDK for Release"
  spec.homepage           = "https://github.com/TapPay/tappay-ios-sdk"
  spec.license = "MIT"
  spec.author             = { "Luke Cho" => "lukecho@cherricorp.com" }
  spec.source            = { :git => 'https://github.com/TapPay/tappay-ios-sdk.git', :tag => '1.0.0' }
  spec.vendored_frameworks = 'TPDirect.xcframework'
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.frameworks = 'PassKit', 'WebKit', 'SafariServices'
end
