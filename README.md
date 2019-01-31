# SwiftyGalleryView

[![Version](https://img.shields.io/cocoapods/v/SwiftyGalleryView.svg?style=flat)](https://cocoapods.org/pods/SwiftyGalleryView)
[![License](https://img.shields.io/cocoapods/l/SwiftyGalleryView.svg?style=flat)](https://cocoapods.org/pods/SwiftyGalleryView)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyGalleryView.svg?style=flat)](https://cocoapods.org/pods/SwiftyGalleryView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Swift 4+ , Xcode9+

## Usage
to have a scrollable stack of images:
1- you may have a simple `UIView`.
2- assign it's class to be `GalleryView`.
3- have an outlet for this view at your code.
![alt text](https://github.com/AbdoFoda/SwiftyGalleryView/blob/master/screenshoots/codeScreenShoot.png)
4- you may initalize your view with array of `UIImages` using the function `func initalize(with images: [UIImage])`
![alt_text](https://github.com/AbdoFoda/SwiftyGalleryView/blob/master/screenshoots/codeScreenshoot2.png)
![alt_text](https://github.com/AbdoFoda/SwiftyGalleryView/blob/master/screenshoots/iPhoneScreenshoot1.png)
![alt_text](https://github.com/AbdoFoda/SwiftyGalleryView/blob/master/screenshoots/iPhoneScreenshoot2.png)
Wohoo! we are done...


**NOTE : You can add any images while you are running with the function `func addToLast(image : Image)` or you may just `clearContent()`

## Installation

SwiftyGalleryView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyGalleryView'
```

## Author

AbdoFoda, abdofoda@stud.fci-cu.edu.eg

## License

SwiftyGalleryView is available under the MIT license. See the LICENSE file for more info.
