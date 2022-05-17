#
#  Be sure to run `pod spec lint Ottu.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    s.name         = "Ottu"
    s.version      = "1.0.10"
    s.summary      = "The Ottu iOS SDK makes it quick and easy to build an excellent payment experience in your iOS app. We provide powerful and customizable UI screens and elements that can be used out-of-the-box to collect your user's payment details."
    s.description  = <<-DESC
    ## Features

**Simplified security**: We make it simple for you to collect sensitive data such as credit card numbers and remain PCI compliant.

**Apple Pay**: We provide a [seamless integration with Apple Pay]().

**SCA-ready**: The SDK automatically performs native [3D Secure authentication]() if needed to comply with [Strong Customer Authentication]() regulation in Europe.

    DESC
    s.homepage     = "https://github.com/Maninder1991/Ottu"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2020
                   Permission is granted to Ottu
                  LICENSE
                }
    s.author             = { "Maninder" => "er.maninderbindra@gmail.com" }
    s.source       = { :git => "https://github.com/Maninder1991/Ottu.git", :tag => "#{s.version}" }
    s.vendored_frameworks = "Source/Ottu.xcframework"

    s.platform = :ios
    s.swift_version = "5.0"

    s.ios.deployment_target  = '12.0'
    s.static_framework = true
    s.dependency = 'SkeletonView'
    s.user_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '"\$(PODS_ROOT)/Ottu/Ottu.xcframework"'
    }
end