//
//  Link_ConfigFile.h
//  TY_DynamicIcon_Demo
//
//  Created by Dnion on 2018/6/14.
//  Copyright © 2018年 Link_TianYang. All rights reserved.
//

#ifndef Link_ConfigFile_h
#define Link_ConfigFile_h


#define LINKDefaults [NSUserDefaults standardUserDefaults]

#define LINKSynchronize [LINKDefaults synchronize]

#define TabBarIcons @"Link_TabBarIcons"


//>>>>>>>>>>>>>>>>>>>>>>>>>>头文件<<<<<<<<<<<<<<<<<<<<<<<<//
#import "UIView+Link_Extensions.h"

//>>>>>>>>>>>>>>>>>>>>>>>>>>工具<<<<<<<<<<<<<<<<<<<<<<<<//

#define TYColorFromHex(rgb)     [UIColor colorWithRed:((float)((rgb & 0xFF0000) >> 16))/255.0 green:((float)((rgb & 0xFF00) >> 8))/255.0 blue:((float)(rgb & 0xFF))/255.0 alpha:1.0]

#define TYSCREENWIDTH [[UIScreen mainScreen] bounds].size.width
#define TYSCREENHEIGHT [[UIScreen mainScreen] bounds].size.height



#endif /* Link_ConfigFile_h */
