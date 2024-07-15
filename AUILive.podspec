#
# Be sure to run `pod lib lint AUILive.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AUILive'
  s.version          = '6.11.0'
  s.summary          = 'A short description of AUILive.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aliyunvideo/MONE_demo_opensource_iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :text => 'LICENSE' }
  s.author           = { 'aliyunvideo' => 'videosdk@service.aliyun.com' }
  s.source           = { :git => 'https://github.com/aliyunvideo/MONE_demo_opensource_iOS.git', :tag =>"v#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.static_framework = true
  
  s.subspec 'LiveList' do |ss|
    ss.resource = 'AUILiveList/Resources/AlivcLive.bundle'
    ss.source_files = 'AUILiveList/Class/**/*.{h,m,mm}'
    ss.prefix_header_contents = '#import "AlivcLiveDemo.h"'
  end
  
  s.subspec 'LiveCommon' do |ss|
    ss.resource = 'AUILiveCommon/Resources/AUILiveCommon.bundle'
    ss.source_files = 'AUILiveCommon/Class/**/*.{h,m,mm}'
    ss.dependency 'AUIFoundation'
    ss.dependency 'AUIBeauty'
    ss.dependency 'Masonry'
    ss.prefix_header_contents = '#import "AUILiveCommon.h"'
  end
  
  s.subspec 'LiveCameraPush' do |ss|
    ss.source_files = 'AUILiveCameraPush/Class/**/*.{h,m,mm}'
    ss.resource = 'AUILiveCameraPush/Resources/*'
    ss.dependency 'AUILive/LiveCommon'
    ss.prefix_header_contents = '#import "AUILiveCameraPush.h"'
    ss.pod_target_xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ALIVC_LIVE_DEMO_ENABLE_CAMERAPUSH'}
  end
  
  s.subspec 'LiveRecordPush' do |ss|
    ss.source_files = 'AUILiveRecordPush/Class/**/*.{h,m,mm}'
    ss.resource = 'AUILiveRecordPush/Resources/AUILiveRecordPush.bundle'
    ss.dependency 'AUILive/LiveCommon'
    ss.prefix_header_contents = '#import "AUILiveRecordPush.h"'
    ss.pod_target_xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ALIVC_LIVE_DEMO_ENABLE_RECORDPUSH'}
  end
  
  s.subspec 'LivePlay' do |ss|
    ss.source_files = 'AUILivePlay/Class/**/*.{h,m,mm}'
    ss.resource = 'AUILivePlay/Resources/AUILivePlay.bundle'
    ss.dependency 'AUILive/LiveCommon'
    ss.prefix_header_contents = '#import "AUILivePlay.h"'
    ss.pod_target_xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ALIVC_LIVE_DEMO_ENABLE_PULLPLAY'}
  end
  
  s.subspec 'LiveRtsPlay' do |ss|
    ss.source_files = 'AUILiveRtsPlay/Class/**/*.{h,m,mm}'
    ss.resource = 'AUILiveRtsPlay/Resources/AUILiveRtsPlay.bundle'
    ss.dependency 'AUILive/LiveCommon'
    ss.prefix_header_contents = '#import "AUILiveRtsPlay.h"'
    ss.pod_target_xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ALIVC_LIVE_DEMO_ENABLE_RTSPLAY'}
  end
  
  s.subspec 'LiveInteractive' do |ss|
    ss.dependency 'AUILive/LiveCommon'
    ss.source_files = 'AUILiveInteractive/AUILiveInteractiveCommon/**/*.{h,m,mm}'

    ss.subspec 'LinkMic' do |sss|
      sss.source_files = 'AUILiveInteractive/AUILiveLinkMic/Class/**/*.{h,m,mm}'
      sss.resource = 'AUILiveInteractive/AUILiveLinkMic/Resources/AUILiveLinkMic.bundle'
      sss.prefix_header_contents = '#import "AUILiveLinkMic.h"'
      sss.pod_target_xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ALIVC_LIVE_DEMO_ENABLE_LINKMIC'}
    end
    
    ss.subspec 'PK' do |sss|
      sss.source_files = 'AUILiveInteractive/AUILivePK/Class/**/*.{h,m,mm}'
      sss.resource = 'AUILiveInteractive/AUILivePK/Resources/AUILivePK.bundle'
      sss.prefix_header_contents = '#import "AUILivePK.h"'
      sss.pod_target_xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ALIVC_LIVE_DEMO_ENABLE_PK'}
    end
  end

  s.subspec 'LiveBasic' do |ss|
    ss.dependency 'AUILive/LiveList'
    ss.dependency 'AUILive/LiveCameraPush'
    ss.dependency 'AUILive/LiveRecordPush'
  end
  
  s.subspec 'LivePlayer' do |ss|
    ss.dependency 'AUILive/LiveList'
    ss.dependency 'AUILive/LivePlay'
    ss.dependency 'AUILive/LiveRtsPlay'
  end
  
  s.subspec 'All' do |ss|
    ss.dependency 'AUILive/LiveBasic'
    ss.dependency 'AUILive/LiveInteractive'
    ss.dependency 'AUILive/LivePlayer'
  end
  
  # 一体化标准SDK依赖
  s.subspec 'AliVCSDK_Standard' do |ss|
    ss.dependency 'AliVCSDK_Standard'
  end
  
  # 一体化互动直播SDK依赖
  s.subspec 'AliVCSDK_InteractiveLive' do |ss|
    ss.dependency 'AliVCSDK_InteractiveLive'
  end
  
  # 一体化基础直播SDK依赖
  s.subspec 'AliVCSDK_BasicLive' do |ss|
    ss.dependency 'AliVCSDK_BasicLive'
  end
  
  # 基础模式推流SDK依赖
  s.subspec 'AlivcLivePusher_Basic' do |ss|
    ss.dependency 'AlivcLivePusher'
  end
  
  # 互动模式推流SDK依赖
  s.subspec 'AlivcLivePusher_Interactive' do |ss|
    ss.dependency 'AlivcLivePusher_Interactive'
  end
  
  # RTS播放SDK依赖
  s.subspec 'AlivcLivePlayer' do |ss|
    ss.dependency 'AliPlayerSDK_iOS'
    ss.dependency 'AliPlayerSDK_iOS_ARTC'
    ss.dependency 'RtsSDK'
  end
  
  # 本地测试
  s.subspec 'LiveLocalSDK' do |ss|
    ss.subspec 'Basic' do |sss|
      sss.dependency 'AUILiveLocalSDK/AlivcLivePusher_Basic'
    end
    
    ss.subspec 'Interactive' do |sss|
      sss.dependency 'AUILiveLocalSDK/AlivcLivePusher_Interactive'
    end
    
    ss.subspec 'IntelligentDenoise' do |sss|
      sss.dependency 'AUILiveLocalSDK/IntelligentDenoise'
    end
  end
end
