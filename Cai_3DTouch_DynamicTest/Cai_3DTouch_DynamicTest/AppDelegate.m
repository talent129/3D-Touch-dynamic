//
//  AppDelegate.m
//  Cai_3DTouch_DynamicTest
//
//  Created by iMac on 16/5/18.
//  Copyright © 2016年 Cai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //使用系统提供的ShortcutIcon类型
    UIApplicationShortcutIcon *addOpportunityIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    UIApplicationShortcutItem *addOpportunityItem = [[UIApplicationShortcutItem alloc] initWithType:@"addOpportunity" localizedTitle:@"添加机会" localizedSubtitle:nil icon:addOpportunityIcon userInfo:nil];
    
    UIApplicationShortcutIcon *bookMarkIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose];
    UIApplicationShortcutItem *bookMarkItem = [[UIApplicationShortcutItem alloc] initWithType:@"bookMark" localizedTitle:@"添加小记" localizedSubtitle:nil icon:bookMarkIcon userInfo:nil];
    
    UIApplicationShortcutIcon *searchGuestIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeSearch];
    UIApplicationShortcutItem *searchGuestItem = [[UIApplicationShortcutItem alloc] initWithType:@"searchGuest" localizedTitle:@"搜索客户" localizedSubtitle:@"通过关键字搜索感兴趣客户" icon:searchGuestIcon userInfo:nil];
    
    //自定义ShortcutIcon
    // 如果设置了自定义的icon，那么系统自带的就不生效
    UIApplicationShortcutIcon *myGuestIcon = [UIApplicationShortcutIcon iconWithTemplateImageName:@"myGuestImage"];
    
    UIApplicationShortcutItem *myGuestItem = [[UIApplicationShortcutItem alloc] initWithType:@"myGuest" localizedTitle:@"我的客户" localizedSubtitle:nil icon:myGuestIcon userInfo:nil];
    
    [UIApplication sharedApplication].shortcutItems = @[addOpportunityItem,bookMarkItem,searchGuestItem,myGuestItem];
    
    
    return YES;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    // 方式一：type
    if ([shortcutItem.type isEqualToString:@"addOpportunity"]) {
        NSLog(@"点击了添加机会item");
    } else if ([shortcutItem.type isEqualToString:@"bookMark"]) {
        NSLog(@"点击了添加小记item");
    } else if ([shortcutItem.type isEqualToString:@"myGuest"]) {
        NSLog(@"点击了我的客户item");
    } else {
        NSLog(@"点击了搜索客户item");
        
    }
    
//    // 方式二：title或者subtitle
//    if ([shortcutItem.localizedTitle isEqualToString:@"添加机会"]) {
//        NSLog(@"点击了添加机会item");
//    } else if ([shortcutItem.localizedTitle isEqualToString:@"添加小记"]) {
//        NSLog(@"点击了添加小记item");
//    } else if ([shortcutItem.localizedTitle isEqualToString:@"我的客户"]) {
//        NSLog(@"点击了我的客户item");
//    } else {
//        NSLog(@"点击了搜索客户item");
//    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
