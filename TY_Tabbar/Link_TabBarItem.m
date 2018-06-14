//
//  Link_TabBarItem.m
//  TY_DynamicSetTabbarIcon
//
//  Created by Dnion on 2018/6/8.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#import "Link_TabBarItem.h"
#import "Link_ConfigFile.h"

@implementation Link_TabBarItem

-(instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage{
    self = [super initWithTitle:title
                          image:image
                  selectedImage:selectedImage];
    if(self){
        [self setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:TYColorFromHex(0X00D85A), NSForegroundColorAttributeName, [UIFont boldSystemFontOfSize:12], NSFontAttributeName,nil]
                            forState:UIControlStateSelected];
        
        [self setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:TYColorFromHex(0X707070), NSForegroundColorAttributeName, [UIFont systemFontOfSize:12], NSFontAttributeName, nil] forState:UIControlStateNormal];
    }
    return self;
}

@end
