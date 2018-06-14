//
//  AppDelegate.m
//  TY_DynamicIcon_Demo
//
//  Created by Dnion on 2018/6/14.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import "AppDelegate.h"
#import "Link_TabbarController.h"
#import "Link_ConfigFile.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

+ (instancetype)sharedManager {
    return [[self alloc] init];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    if ([[LINKDefaults objectForKey:TabBarIcons] count] > 1) {
        NSLog(@"初始化了Icon");
    }else{
        [LINKDefaults setObject:@[@"Tab_Icon_A",@"Tab_Icon_B",@"Tab_Icon_C",@"Tab_Icon_D"] forKey:TabBarIcons];
        LINKSynchronize;
    }
    
    UIWindow *window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [window makeKeyWindow];
    self.window = window;
    
    
    [self configRootViewController];

    
    return YES;
}

-(void)configRootViewController{
    

    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    
    Link_TabbarController *tabbar = [[Link_TabbarController alloc] init];
    
    window.rootViewController = tabbar;
    
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
