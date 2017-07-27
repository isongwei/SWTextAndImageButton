# SWTextAndImageButton

[![CI Status](http://img.shields.io/travis/i_songwei@163.com/SWTextAndImageButton.svg?style=flat)](https://travis-ci.org/i_songwei@163.com/SWTextAndImageButton)
[![Version](https://img.shields.io/cocoapods/v/SWTextAndImageButton.svg?style=flat)](http://cocoapods.org/pods/SWTextAndImageButton)
[![License](https://img.shields.io/cocoapods/l/SWTextAndImageButton.svg?style=flat)](http://cocoapods.org/pods/SWTextAndImageButton)
[![Platform](https://img.shields.io/cocoapods/p/SWTextAndImageButton.svg?style=flat)](http://cocoapods.org/pods/SWTextAndImageButton)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## 更改记录： 

2017.07.27 -- 增加一个反方向的边距

2016.-.- -- 


## Installation

SWTextAndImageButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SWTextAndImageButton', '~>0.1.0'
```

## Use

```
code
SWTextAndImageButton * btn
btn.rectType =SWButtonTypeTextLeft;  //方向
btn.contentDistance = 10; // 文字图片间的距离
btn.padding = 20; // 边距
// btn.padding2 = 20; // 方向相反的边距
```

xib
<img src="./test.gif" title="" width="500">

## Author

imsongwei@163.com

## License

SWTextAndImageButton is available under the MIT license. See the LICENSE file for more info.
