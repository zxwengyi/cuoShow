//
//  JMMembersViewController.h
//  jiMuOperate
//
//  Created by 翁仪 on 16/4/14.
//  Copyright © 2016年 jinXinFengLi. All rights reserved.
//
#ifndef UnionRich_Screen_header_h
#define UnionRich_Screen_header_h

//获取沙盒路径
#define kDocumentPath NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0]

// 获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define BACKCOLOR RGB(232, 234, 235)

//重写NSLog,Debug模式下打印日志和当前行数
#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif

//NSUserDefaults 实例化
#define USER_DEFAULT [NSUserDefaults standardUserDefaults]

//获取屏幕 宽度、高度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define SCREEN_BOUNDS ([UIScreen mainScreen].bounds)


//AlertView弹框提醒
#define ALERT(msg) [[UIAlertView alloc] initWithTitle:nil message:msg delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil]
#define ALERTBUTTON(msg,button) [[UIAlertView alloc] initWithTitle:nil message:msg delegate:self cancelButtonTitle:@"取消" otherButtonTitles:button, nil]
#define ALERTTITLE(title,msg) [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil]
#define ALERTTTBUTTON(title,msg,button) [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"取消" otherButtonTitles:button, nil]

#define SHOWALERT(msg) [[[UIAlertView alloc] initWithTitle:nil message:msg delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil] show]
#define SHOWALERTBUTTON(msg,button) [[[UIAlertView alloc] initWithTitle:nil message:msg delegate:self cancelButtonTitle:@"取消" otherButtonTitles:button, nil] show]
#define SHOWALERTTITLE(title,msg) [[[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil] show]
#define SHOWALERTTTBUTTON(title,msg,button) [[[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"取消" otherButtonTitles:button] show]

// 是否隐藏tabbar，navigaction
#define HIDDENNAV(state) self.navigationController.navigationBar.hidden = state
#define HIDDENTAB(state) self.tabBarController.tabBar.hidden = state


//禁止旋转
#define SHOULDAutorotate(staye)\
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation\
{\
return (toInterfaceOrientation == UIInterfaceOrientationPortrait);\
}\
- (BOOL)shouldAutorotate\
{\
return staye;\
}\
- (UIInterfaceOrientationMask)supportedInterfaceOrientations\
{\
return UIInterfaceOrientationMaskPortrait;\
}

//判断是真机还是模拟器
#if TARGET_OS_IPHONE
//iPhone Device
#endif

#if TARGET_IPHONE_SIMULATOR
//iPhone Simulator
#endif

//系统是否大于等于IOS9
#define IOS9 ([[[[UIDevice currentDevice] systemVersion] substringToIndex:1] intValue]>=9)

#endif


