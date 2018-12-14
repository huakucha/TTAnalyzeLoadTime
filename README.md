# TTAnalyzeLoadTime
通过Mach-O文件NonlazyClassList构建动态库进行iOS load方法耗时检测

## How To Get Started
#### 简介
* 仓库中提供了源码以及二进制的文件，源码提供了整个AnalyzeLoadTime的全部文件`TTLoadTime.mm`,二进制文件为一个动态库（为什么提供动态库文末有介绍），动态库为尽可能提前执行Load Method Swizzling提供了可能
* 重写`_getObjc2NonlazyCategoryList `、`_getObjc2NonlazyClassList `(runtime源码中有介绍),可以快速拿到全部load的所属Class以及load 的IMP地址
* 防止运行环境被破坏使用`method_setImplementation`构建block执行原函数
* 寻找mach-o中的load以及Swizzle共耗时4毫秒


#### Podfile

To integrate TTAnalyzeLoadTime into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
pod 'TTAnalyzeLoadTime', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

####Usage

```ruby
#import <TTLoadTime/TTLoadTime.h>

printLoadCostsInfo();
```

####TODO

1. 白名单
2. 格式化打印


####参考文章

* https://juejin.im/post/5c0bb2e8e51d4529ee233fee 作者:CoderLin
* https://mp.weixin.qq.com/s/kL__CM3CfP_7i8Obg8qzWQ 作者: everettjf

