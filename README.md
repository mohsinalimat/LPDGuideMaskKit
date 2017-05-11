# LPDGuideMaskKit

[![CI Status](http://img.shields.io/travis/mmoaay/LPDGuideMaskKit.svg?style=flat)](https://travis-ci.org/mmoaay/LPDGuideMaskKit)
[![Version](https://img.shields.io/cocoapods/v/LPDGuideMaskKit.svg?style=flat)](http://cocoapods.org/pods/LPDGuideMaskKit)
[![License](https://img.shields.io/cocoapods/l/LPDGuideMaskKit.svg?style=flat)](http://cocoapods.org/pods/LPDGuideMaskKit)
[![Platform](https://img.shields.io/cocoapods/p/LPDGuideMaskKit.svg?style=flat)](http://cocoapods.org/pods/LPDGuideMaskKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LPDGuideMaskKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LPDGuideMaskKit"
```

## Usage

```
  [[LPDGuideMaskKit shared] setItems:@[
                                       @[[[LPDGuideMaskHollowItem alloc] initWithCenter:self.guideOne.center size:self.guideOne.bounds.size],
                                         [[LPDGuideMaskTipsItem alloc] initWithImage:[UIImage imageNamed:@"image_transferorder_guide2"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, 120+(170/2)) size:CGSizeMake(320, 170)],
                                         [[LPDGuideMaskButtonItem alloc] initWithView:[self nextWithTitle:@"下一步"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(142+20)) size:CGSizeMake(100, 40)]
                                         ],
                                       @[
                                         [[LPDGuideMaskHollowItem alloc] initWithCenter:self.guideTwo.center size:self.guideTwo.bounds.size],
                                         [[LPDGuideMaskTipsItem alloc] initWithImage:[UIImage imageNamed:@"image_transferorder_guide3"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(120+(200/2))) size:CGSizeMake(320, 200)],
                                         [[LPDGuideMaskButtonItem alloc] initWithView:[self nextWithTitle:@"下一步"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(142+20)) size:CGSizeMake(100, 40)]
                                         ],
                                       @[
                                         [[LPDGuideMaskHollowItem alloc] initWithCenter:self.guideThree.center size:self.guideThree.bounds.size],
                                         [[LPDGuideMaskTipsItem alloc] initWithImage:[UIImage imageNamed:@"image_transferorder_guide4"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(120+(200/2))) size:CGSizeMake(320, 200)],
                                         [[LPDGuideMaskButtonItem alloc] initWithView:[self nextWithTitle:@"开始转单"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(142+20)) size:CGSizeMake(100, 40)]
                                         ]
                                       ]
   ];
```

## Demo



## Author

mmoaay, mmoaay@sina.com

## License

LPDGuideMaskKit is available under the MIT license. See the LICENSE file for more info.
