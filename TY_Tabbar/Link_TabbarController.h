//
//  Link_TabbarController.h
//  TY_DynamicSetTabbarIcon
//
//  Created by Dnion on 2018/6/8.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Link_TabbarController : UITabBarController

+ (instancetype)sharedManager;

-(void)configureTabBarController;


@end
