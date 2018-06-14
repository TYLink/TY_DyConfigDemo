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
    
# pragma Link_TabBarItem
    
    Link_TabBarItem *A_Item;
    Link_TabBarItem *B_Item;
    Link_TabBarItem *C_Item;
    Link_TabBarItem *D_Item;
    
    NSArray *tabBarIcons = [LINKDefaults objectForKey:TabBarIcons];
    
    A_Item = [[Link_TabBarItem alloc] initWithTitle:@"Item_A" image:[UIImage imageNamed:[tabBarIcons objectAtIndex:0]] selectedImage:nil];
    
    B_Item = [[Link_TabBarItem alloc] initWithTitle:@"Item_B" image:[UIImage imageNamed:[tabBarIcons objectAtIndex:1]] selectedImage:nil];
    
    C_Item = [[Link_TabBarItem alloc] initWithTitle:@"Item_C" image:[UIImage imageNamed:[tabBarIcons objectAtIndex:2]] selectedImage:nil];
    
    D_Item = [[Link_TabBarItem alloc] initWithTitle:@"Item_D" image:[UIImage imageNamed:[tabBarIcons objectAtIndex:3]] selectedImage:nil];
    
# pragma Link_TabBarController
    
    Link_FirstViewController *A_VC = [[Link_FirstViewController alloc] init];
    Link_BaseNavController *A_Nav = [[Link_BaseNavController alloc] initWithRootViewController:A_VC];
    A_VC.navigationItem.title = @"第一页";
    A_Nav.tabBarItem = A_Item;
    
    Link_SecondViewController *B_VC = [[Link_SecondViewController alloc] init];
    Link_BaseNavController *B_Nav = [[Link_BaseNavController alloc] initWithRootViewController:B_VC];
    B_VC.navigationItem.title = @"第二页";
    B_Nav.tabBarItem = B_Item;
    
    Link_ThirdViewController *C_VC = [[Link_ThirdViewController alloc] init];
    Link_BaseNavController *C_Nav = [[Link_BaseNavController alloc] initWithRootViewController:C_VC];
    C_VC.navigationItem.title = @"第三页";
    C_Nav.tabBarItem = C_Item;
    
    Link_DeployViewController *D_VC = [[Link_DeployViewController alloc] init];
    Link_BaseNavController *D_Nav = [[Link_BaseNavController alloc] initWithRootViewController:D_VC];
    D_VC.navigationItem.title = @"设置";
    D_Nav.tabBarItem = D_Item;
    
    
    [[UITabBar appearance] setTintColor:TYColorFromHex(0X00D85A)];
    
    self.selectedIndex = 0;
    
    [self setViewControllers:@[A_Nav,B_Nav,C_Nav,D_Nav]];
    
    
//    self.viewControllers =@[A_Nav,B_Nav,C_Nav,D_Nav];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
 
//    NSMutableArray * iteamArr =[[NSMutableArray alloc] initWithArray: self.viewControllers];
//
//    Link_TabBarItem * E_Item = [[Link_TabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"People"] selectedImage:[UIImage imageNamed:@"People"]];
//
//    UIViewController * E_VC = [[UIViewController alloc] init];
//
//    E_VC.view.backgroundColor = [UIColor whiteColor];
//
//    E_VC.tabBarItem = E_Item;
//
//    if (self.selectedIndex == 0) {
//
//        [iteamArr addObject:E_VC];
//        self.viewControllers = iteamArr;
//    }else{
//
//        [iteamArr removeLastObject];
//        self.viewControllers  = iteamArr;
//    }
    
    
}

@end
