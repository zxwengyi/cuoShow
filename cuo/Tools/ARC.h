//
//  ARC.h
//  UnionRich
//
//  Created by 云天 on 15/2/3.
//  Copyright (c) 2015年 cgc. All rights reserved.
//
#define LCDH [UIScreen mainScreen].bounds.size.height

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

 
#define LCDH [UIScreen mainScreen].bounds.size.height
//#define LCDW [UIScreen mainScreen].bounds.size.width
//#define isiOS8 [[[UIDevice currentDevice]systemVersion]floatValue]>=8.0
//#define isiOS9 [[[UIDevice currentDevice]systemVersion]floatValue]>=9.0

@interface ARC : NSObject

/**创建textField*/
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString*)placeHolder SecureTextEntry:(BOOL)isOpen;
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color;
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color LeftImageName:(NSString *)leftName;
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color LeftImageName:(NSString *)leftName RightImageName:(NSString *)rightName;
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color LeftImageName:(NSString *)leftName RightImageName:(NSString *)rightName BGImageName:(NSString *)bgName;

/**创建Button*/
+ (UIButton *)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method;
+ (UIButton *)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method Title:(NSString *)title;
+ (UIButton *)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method Title:(NSString *)title NormalImageName:(NSString *)normalName;
+ (UIButton*)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method Title:(NSString*)title NormalImageName:(NSString*)normalName SelectImageName:(NSString*)selectName;

/**创建View*/
+ (UIView*)createViewWithFrame:(CGRect)frame;

/**创建Label*/
+ (UILabel*)createLabelWithFrame:(CGRect)frame Font:(float)font Text:(NSString*)text;

/**创建ImageView*/
+ (UIImageView*)createImageViewWithFrame:(CGRect)frame ImageName:(NSString*)name;
/**添加线*/
+ (UIImageView *)createImageViewLineWithHeigt:(CGFloat)height;
#pragma mark 创建UIScrollView
+(UIScrollView*)makeScrollViewWithFrame:(CGRect)frame andSize:(CGSize)size;
#pragma mark 创建UIPageControl
+(UIPageControl*)makePageControlWithFram:(CGRect)frame pageNumber:(NSInteger )pageNumber;
#pragma mark 创建UISlider
+(UISlider*)makeSliderWithFrame:(CGRect)rect AndImage:(UIImage*)image;
#pragma mark 创建时间转换字符串
+(NSString *)stringFromDateWithHourAndMinute:(NSDate *)date;
#pragma mark 设置状态栏背景
+(void)SetStatusBarBackgroundColor:(UIWindow*)window BarView:(UIView*)view IsHidden:(BOOL)hidden;
#pragma mark -- 图片比例设置
+(UIImage*)makeImageSize:(NSString*)imageName width:(float)a height:(float)b widthTimes:(float)c heightTimes:(float)d;





@end
