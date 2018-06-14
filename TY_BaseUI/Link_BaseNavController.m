//
//  Link_BaseNavController.m
//  TY_DynamicIcon_Demo
//
//  Created by Dnion on 2018/6/14.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import "Link_BaseNavController.h"
#import "Link_ConfigFile.h"

@interface Link_BaseNavController ()

@end

@implementation Link_BaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

// 统一配置 导航条 设置
+ (void)initialize {
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    // 设置导航条前景色
    [bar setTintColor:TYColorFromHex(0X007AFF)];
    //    [bar setBarTintColor:[UIColor redColor]];
    [bar setBackIndicatorImage:[UIImage imageNamed:@"Back_Icon"]];
    [bar setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"Back_Icon"]];
    // 获取导航条按钮的标识
    UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    // 修改返回按钮标题的位置
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:0.001],
                                 NSForegroundColorAttributeName:[UIColor clearColor]};
    [item setTitleTextAttributes:attributes forState:UIControlStateNormal];
}



@end
