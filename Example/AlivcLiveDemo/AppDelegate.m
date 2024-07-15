//
//  AppDelegate.m
//  AlivcLiveDemo
//
//  Created by ISS013602000846 on 2023/7/24.
//

#import "AppDelegate.h"
#import "AUIFoundation.h"
#import "AUILiveCommon.h"
#import "AUILiveViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 仅支持暗黑模式
    AVTheme.supportsAutoMode = NO;
    AVTheme.currentMode = AVThemeModeDark;
    
    AUILiveViewController *rootVC = [AUILiveViewController new];
    rootVC.hiddenBackButton = YES;
    AVNavigationController *nav =[[AVNavigationController alloc]initWithRootViewController:rootVC];
    [self.window setRootViewController:nav];
    [self.window makeKeyAndVisible];
    
    NSLog(@"queen SDK:%@", [QueenEngine getVersion]);
    
    return YES;
}

@end
