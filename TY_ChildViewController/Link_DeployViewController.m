//
//  Link_DeployViewController.m
//  TY_DynamicIcon_Demo
//
//  Created by Dnion on 2018/6/14.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import "Link_DeployViewController.h"
#import "Link_ConfigFile.h"
#import "Link_TabbarConfigViewController.h"
#import "Link_TabbarAddViewController.h"


@interface Link_DeployViewController ()

@property (nonatomic, strong) UIButton *tabBarConfigBtn;

@property (nonatomic, strong) UIButton *tabBarAddBtn;

@property (nonatomic, strong) UIButton *themeConfigBtn;



@end

@implementation Link_DeployViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.tabBarConfigBtn];
    self.tabBarConfigBtn.frame = CGRectMake(10, 60, TYSCREENWIDTH - 20, 60);
    
    [self.view addSubview:self.tabBarAddBtn];
    self.tabBarAddBtn.frame = CGRectMake(10, _tabBarConfigBtn.ctBottom + 60, TYSCREENWIDTH - 20, 60);
    
    [self.view addSubview:self.themeConfigBtn];
    self.themeConfigBtn.frame = CGRectMake(10, _tabBarAddBtn.ctBottom + 60, TYSCREENWIDTH - 20, 60);
    
}

-(UIButton *)tabBarConfigBtn{
    if (!_tabBarConfigBtn) {
        _tabBarConfigBtn = [[UIButton alloc] init];
        [_tabBarConfigBtn setTitle:@"设置 app Tabbar 风格" forState:UIControlStateNormal];
        [_tabBarConfigBtn setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_tabBarConfigBtn addTarget:self action:@selector(tabBarConfigClick:) forControlEvents:UIControlEventTouchUpInside];
        [_tabBarConfigBtn setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _tabBarConfigBtn.layer.borderWidth = 1;
        _tabBarConfigBtn.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _tabBarConfigBtn.layer.cornerRadius = 6;//
        _tabBarConfigBtn.layer.masksToBounds = NO;
    }
    return _tabBarConfigBtn;
}

-(UIButton *)tabBarAddBtn{
    if (!_tabBarAddBtn) {
        _tabBarAddBtn = [[UIButton alloc] init];
        [_tabBarAddBtn setTitle:@"改变 app Tabbar 数量" forState:UIControlStateNormal];
        [_tabBarAddBtn setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_tabBarAddBtn addTarget:self action:@selector(tabBarAddClick:) forControlEvents:UIControlEventTouchUpInside];
        [_tabBarAddBtn setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _tabBarAddBtn.layer.borderWidth = 1;
        _tabBarAddBtn.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _tabBarAddBtn.layer.cornerRadius = 6;//
        _tabBarAddBtn.layer.masksToBounds = NO;
    }
    return _tabBarAddBtn;
}

-(UIButton *)themeConfigBtn{
    if (!_themeConfigBtn) {
        _themeConfigBtn = [[UIButton alloc] init];
        [_themeConfigBtn setTitle:@"设置 app 主题风格" forState:UIControlStateNormal];
        [_themeConfigBtn setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_themeConfigBtn addTarget:self action:@selector(themeConfigClick:) forControlEvents:UIControlEventTouchUpInside];
        [_themeConfigBtn setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _themeConfigBtn.layer.borderWidth = 1;
        _themeConfigBtn.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _themeConfigBtn.layer.cornerRadius = 6;//
        _themeConfigBtn.layer.masksToBounds = NO;
    }
    return _themeConfigBtn;
}


-(void)tabBarConfigClick:(UIButton *)sender{    
    Link_TabbarConfigViewController * VC = [[Link_TabbarConfigViewController alloc] init];
    VC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:VC animated:YES];
}

-(void)tabBarAddClick:(UIButton *)sender{
    
    Link_TabbarAddViewController * VC = [[Link_TabbarAddViewController alloc] init];
    VC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:VC animated:YES];
    
}

-(void)themeConfigClick:(UIButton *)sender{
    
    
}

@end
