#
#  Be sure to run `pod spec lint Ottu.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    s.name         = "Ottu"
    s.version      = "1.0.9"
    s.summary      = "The Ottu iOS SDK makes it quick and easy to build an excellent payment experience in your iOS app. We provide powerful and customizable UI screens and elements that can be used out-of-the-box to collect your user's payment details. We also expose the low-level APIs that power those UIs so that you can build fully custom experiences."
    s.description  = <<-DESC
    ## Features

**Simplified security**: We make it simple for you to collect sensitive data such as credit card numbers and remain [PCI compliant](). This means the sensitive data is sent directly to Stripe instead of passing through your server.

**Apple Pay**: We provide a [seamless integration with Apple Pay]().

**SCA-ready**: The SDK automatically performs native [3D Secure authentication]() if needed to comply with [Strong Customer Authentication]() regulation in Europe.

**Native UI**: We provide native screens and elements to collect payment details. For example, [PaymentSheet]() is a prebuilt UI that combines all the steps required to pay - collecting payment details, billing details, and confirming the payment - into a single sheet that displays on top of your app.

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
    s.dependency 'SkeletonView'
    s.user_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '"\$(PODS_ROOT)/Ottu/Ottu.xcframework"'
    }
end
