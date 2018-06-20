//
//  Link_TabbarAddViewController.m
//  TY_DynamicIcon_Demo
//
//  Created by Dnion on 2018/6/20.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import "Link_TabbarAddViewController.h"
#import "Link_ConfigFile.h"
#import "AppDelegate.h"

@interface Link_TabbarAddViewController ()

@property (nonatomic, strong) UILabel *currentNumberLabel;
@property (nonatomic, strong) UIButton *addButton;
@property (nonatomic, strong) UIButton *subButton;
@property (nonatomic, strong) UIButton *OKButton;
@property (nonatomic, strong) NSMutableArray *tabbarMutArr;


@end

@implementation Link_TabbarAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.currentNumberLabel];
    self.currentNumberLabel.frame = CGRectMake(10, 60, TYSCREENWIDTH - 20, 60);
    
    [self.view addSubview:self.addButton];
    self.addButton.frame = CGRectMake(10, _currentNumberLabel.ctBottom + 60, (TYSCREENWIDTH - 40)/2, 60);
    
    [self.view addSubview:self.subButton];
    self.subButton.frame = CGRectMake(_addButton.ctRight + 20, _currentNumberLabel.ctBottom + 60, (TYSCREENWIDTH - 40)/2, 60);
    
    [self.view addSubview:self.OKButton];
    self.OKButton.frame = CGRectMake(10, _subButton.ctBottom + 60, TYSCREENWIDTH - 20, 60);

    self.tabbarMutArr = [[NSMutableArray alloc] initWithArray:[LINKDefaults objectForKey:TabBarModes]];
    
    self.currentNumberLabel.text = [NSString stringWithFormat:@"当前有%ld个TabbarItem",_tabbarMutArr.count];
}

-(UILabel *)currentNumberLabel{
    if (!_currentNumberLabel) {
        _currentNumberLabel = [[UILabel alloc] init];
        _currentNumberLabel.text = @"当前有4个TabbarItem";
        [_currentNumberLabel setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _currentNumberLabel.layer.borderWidth = 1;
        _currentNumberLabel.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _currentNumberLabel.layer.cornerRadius = 6;//
        _currentNumberLabel.layer.masksToBounds = NO;
        _currentNumberLabel.textColor = [UIColor blackColor];
        [_currentNumberLabel setTextAlignment:NSTextAlignmentCenter];
        _currentNumberLabel.font = [UIFont systemFontOfSize:17.f];
    }
    return _currentNumberLabel;
}

-(UIButton *)addButton{
    if (!_addButton) {
        _addButton = [[UIButton alloc] init];
        [_addButton setTitle:@"加一个" forState:UIControlStateNormal];
        [_addButton setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_addButton addTarget:self action:@selector(addBtnbClick:) forControlEvents:UIControlEventTouchUpInside];
        [_addButton setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _addButton.layer.borderWidth = 1;
        _addButton.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _addButton.layer.cornerRadius = 6;//
        _addButton.layer.masksToBounds = NO;
    }
    return _addButton;
}

-(UIButton *)subButton{
    if (!_subButton) {
        _subButton = [[UIButton alloc] init];
        [_subButton setTitle:@"减一个" forState:UIControlStateNormal];
        [_subButton setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_subButton addTarget:self action:@selector(subBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_subButton setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _subButton.layer.borderWidth = 1;
        _subButton.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _subButton.layer.cornerRadius = 6;//
        _subButton.layer.masksToBounds = NO;
    }
    return _subButton;
}

-(UIButton *)OKButton{
    if (!_OKButton) {
        _OKButton = [[UIButton alloc] init];
        [_OKButton setTitle:@"确定" forState:UIControlStateNormal];
        [_OKButton setTitleColor:TYColorFromHex(0X728CA6) forState:UIControlStateNormal];
        [_OKButton addTarget:self action:@selector(OKBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_OKButton setBackgroundColor:TYColorFromHex(0XF1F1F1)];
        _OKButton.layer.borderWidth = 1;
        _OKButton.layer.borderColor = TYColorFromHex(0XCECECE).CGColor;
        _OKButton.layer.cornerRadius = 6;//
        _OKButton.layer.masksToBounds = NO;
    }
    return _OKButton;
}

-(void)addBtnbClick:(UIButton *)sender{
    
    if (_tabbarMutArr.count < 6) {
        
        [_tabbarMutArr addObject:@{@"NavTitle":@"NEW",
                                   @"ViewControllerName":@"Link_AddMoreViewController",
                                   @"ItemIcon":@"NewTab_Icon"}];
    }else{
        NSLog(@"不能再添加了");
    }
    self.currentNumberLabel.text = [NSString stringWithFormat:@"当前有%ld个TabbarItem",_tabbarMutArr.count];
}

-(void)subBtnClick:(UIButton *)sender{
    if (_tabbarMutArr.count > 4) {
        
        [_tabbarMutArr removeLastObject];
    }else{
        NSLog(@"不能再减少了");
    }
    self.currentNumberLabel.text = [NSString stringWithFormat:@"当前有%ld个TabbarItem",_tabbarMutArr.count];
}

-(void)OKBtnClick:(UIButton *)sender{
    
    [LINKDefaults setObject:_tabbarMutArr forKey:TabBarModes];
    [LINKDefaults setObject:[NSNumber numberWithInteger:3] forKey:TabBarSelectedIndex];
    
    LINKSynchronize;
    
    [[AppDelegate sharedManager] configRootViewController];
    
    [LINKDefaults removeObjectForKey:TabBarSelectedIndex];
}




@end
