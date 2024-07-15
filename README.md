# AUILive组件

## 代码结构
```
├── demos-ios-live                        // Demo根目录
│   ├── AUILive.podspec                   // 本地pod文件
│   ├── AUILiveList                       // Demo壳组件代码，将其他功能组件UI以列表的形式展示
│   ├── AUILiveCommon                     // 公共组件代码
│   ├── AUILiveCameraPush                 // 摄像头推流组件代码
│   ├── AUILiveRecordPush                 // 录屏推流组件代码
│   ├── AUILivePlay                       // 拉流播放组件代码 
│   ├── AUILiveRtsPlay                    // 超低延时直播组件代码
│   ├── AUILiveInteractive                // 互动模式(连麦互动、PK互动)组件代码
│   ├── AUILiveLocalSDK                   // 本地SDK文件(可选集成，用于本地集成方式，里面有智能降噪本地库)
│   ├── Example                           // 示例代码工程
│   ├── README.md                         // Readme   

```

## 跑通Example Demo

1. 源码下载后，解压进入Example目录
2. 在Example目录下执行“pod install  --repo-update”，自动安装依赖SDK
3. 打开工程文件“AlivcLiveDemo.xcworkspace”，修改包Id
4. 在控制台上申请试用License，获取License文件和LicenseKey，如果已有直接进入下一步
5. 把License文件放到AlivcLiveDemo/目录下，并修改文件名为“license.crt”
6. 把“LicenseKey”（如果没有，请在控制台拷贝），打开“AlivcLiveDemo/Info.plist”和“AlivcLiveDemo/Basic-Info.plist”，填写到字段“AlivcLicenseKey”的值中
7. 在真机上编译运行

