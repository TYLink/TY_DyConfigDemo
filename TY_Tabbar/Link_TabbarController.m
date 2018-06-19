//
//  Link_TabbarController.m
//  TY_DynamicSetTabbarIcon
//
//  Created by Dnion on 2018/6/8.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import "Link_TabbarController.h"
#import "Link_BaseNavController.h"
#import "Link_BaseViewController.h"

#import "Link_FirstViewController.h"
#import "Link_SecondViewController.h"
#import "Link_ThirdViewController.h"
#import "Link_DeployViewController.h"
#import "Link_AddMoreViewController.h"

#import "Link_TabBarItem.h"
#import "Link_ConfigFile.h"

@interface Link_TabbarController ()

@end

@implementation Link_TabbarController

+ (instancetype)sharedManager {
    return [[self alloc] init];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self configureTabBarController];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)configureTabBarController{
    
    NSArray * tabbarArr = [LINKDefaults objectForKey:TabBarModes];
    
    NSMutableArray *viewControllers = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dic in tabbarArr) {
        
        Link_TabBarItem *tabBarItem = [[Link_TabBarItem alloc] initWithTitle:dic[@"NavTitle"]
                                                                       image:[UIImage imageNamed:dic[@"ItemIcon"]]
                                                               selectedImage:nil];
        
        UIViewController *subViewController = [[NSClassFromString(dic[@"ViewControllerName"]) alloc] init];
        Link_BaseNavController *A_Nav = [[Link_BaseNavController alloc] initWithRootViewController:subViewController];
        subViewController.navigationItem.title = dic[@"NavTitle"];
        A_Nav.tabBarItem = tabBarItem;
        
        [viewControllers addObject:A_Nav];
    }
    
    [[UITabBar appearance] setTintColor:TYColorFromHex(0X00D85A)];
    
    NSInteger index = [[LINKDefaults objectForKey:TabBarSelectedIndex] integerValue];
    
    [self setViewControllers:viewControllers];
    
    self.selectedIndex = index > 0? index : 0;
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
 
}

@end
