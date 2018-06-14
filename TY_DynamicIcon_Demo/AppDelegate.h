//
//  AppDelegate.h
//  TY_DynamicIcon_Demo
//
//  Created by Dnion on 2018/6/14.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


+ (instancetype)sharedManager;

-(void)configRootViewController;

@end

