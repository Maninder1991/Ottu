# Ottu iOS SDK

The Ottu iOS SDK makes it quick and easy to build an excellent payment experience in your iOS app. We provide powerful and customizable UI screens and elements that can be used out-of-the-box to collect your user's payment details. We also expose the low-level APIs that power those UIs so that you can build fully custom experiences.

## Features

**Simplified security**: We make it simple for you to collect sensitive data such as credit card numbers and remain [PCI compliant](). This means the sensitive data is sent directly to Stripe instead of passing through your server.

**Apple Pay**: We provide a [seamless integration with Apple Pay]().

**SCA-ready**: The SDK automatically performs native [3D Secure authentication]() if needed to comply with [Strong Customer Authentication]() regulation in Europe.

**Native UI**: We provide native screens and elements to collect payment details. For example, [PaymentSheet]() is a prebuilt UI that combines all the steps required to pay - collecting payment details, billing details, and confirming the payment - into a single sheet that displays on top of your app.

<img src="https://user-images.githubusercontent.com/89988962/153276097-9b3369a0-e732-45c4-96ec-ff9d48ad0fb6.png" alt="PaymentSheet" align="center"/>

**Localized**: We support the following localizations: English, Arabic.

#### Recommended usage

If you're selling digital products or services that will be consumed within your app, (e.g. subscriptions, in-game currencies, game levels, access to premium content, or unlocking a full version), you must use Apple's in-app purchase APIs. See the [App Store review guidelines](https://developer.apple.com/app-store/review/guidelines/#payments) for more information. For all other scenarios you can use this SDK to process payments via Stripe.

#### Privacy

The Ottu iOS SDK collects data to help us improve our products and prevent fraud. This data is never used for advertising and is not rented, sold, or given to advertisers.

## Requirements

The Ottu iOS SDK requires Xcode 13.0 or later and is compatible with apps targeting iOS 12 or above. We support Catalyst on macOS 10.15 or later.

## Getting started

Installation
==========================

#### Installation with CocoaPods

[![CocoaPods](https://img.shields.io/cocoapods/v/IQKeyboardManager.svg)](https://cocoapods.org/pods/Ottu)

***Ottu:*** Ottu is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Ottu'
```

*Swift 5.1, 5.0, 4.2, 4.0 (Xcode 13)*

In ViewController.swift, just import Ottu framework and initalize Ottu SDK.

```swift
import Ottu

class ViewController: UIViewController,OttuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sessionId = "ENTER_YOUR_SESSION_ID"
        _ = Ottu.init(sessionId, merchantId: "MERCHANT_ID", viewController: self, delegate: self)
    }
    
    func success(_ message: String, response: [String : Any]?) {
        print("success")
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            let alert = UIAlertController(title: message.capitalized, message: "\(String(describing: response))", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func fail(_ message: String, response: [String : Any]?) {
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            let alert = UIAlertController(title: message.capitalized, message: "\(String(describing: response))", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        print(message)
    }
}
```


## Licenses

- [Ottu iOS SDK License](LICENSE)
