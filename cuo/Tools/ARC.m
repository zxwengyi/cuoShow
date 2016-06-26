//
//  ARC.m
//  UnionRich
//
//  Created by 云天 on 15/2/3.
//  Copyright (c) 2015年 cgc. All rights reserved.
//

#import "ARC.h"
#import "PrefixHeader.pch"

@implementation ARC

/**创建textField*/

+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString*)placeHolder SecureTextEntry:(BOOL)isOpen;
{
    UITextField* textField=[[UITextField alloc]initWithFrame:frame];
    textField.font=[UIFont systemFontOfSize:font];
    textField.textAlignment=YES;
    textField.tintColor=[UIColor whiteColor];
    textField.borderStyle=UITextBorderStyleRoundedRect;
    textField.placeholder=placeHolder;
    textField.secureTextEntry=isOpen;
    textField.clearsOnBeginEditing=YES;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing; //编辑时会出现个修改X

    return textField;
}

+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color
{
    UITextField * textField = [ARC createTextFieldWithFrame:frame Font:font Placeholder:placeHolder SecureTextEntry:isOpen];
    textField.textColor=color;
    return textField;
}

+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color LeftImageName:(NSString *)leftName
{
    UITextField * textField = [ARC createTextFieldWithFrame:frame Font:font Placeholder:placeHolder SecureTextEntry:isOpen TextColor:color];
    UIImage* image=[UIImage imageNamed:leftName];
    UIImageView* leftView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, image.size.width , image.size.height)];
    textField.leftView=leftView;
    textField.leftViewMode=UITextFieldViewModeAlways;
    return textField;
}

+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color LeftImageName:(NSString *)leftName RightImageName:(NSString *)rightName
{
    UITextField * textField = [ARC createTextFieldWithFrame:frame Font:font Placeholder:placeHolder SecureTextEntry:isOpen TextColor:color LeftImageName:leftName];
    UIImage* rightImage=[UIImage imageNamed:rightName];
    UIImageView* rightView=[[UIImageView alloc]initWithFrame:CGRectMake( 0, 0, rightImage.size.width, rightImage.size.height)];
    textField.rightView=rightView;
    return textField;
}

+ (UITextField *)createTextFieldWithFrame:(CGRect)frame Font:(float)font Placeholder:(NSString *)placeHolder SecureTextEntry:(BOOL)isOpen TextColor:(UIColor *)color LeftImageName:(NSString *)leftName RightImageName:(NSString *)rightName BGImageName:(NSString *)bgName
{
    UITextField * textField = [ARC createTextFieldWithFrame:frame Font:font Placeholder:placeHolder SecureTextEntry:isOpen TextColor:color LeftImageName:leftName RightImageName:rightName];
    textField.background = [UIImage imageNamed:bgName];
    return textField;
    
}

/**创建Button*/
+ (UIButton *)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method
{
    UIButton* button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame=frame;
    button.tintColor = [UIColor whiteColor];
    button.titleLabel.textColor = [UIColor whiteColor];
    [button addTarget:target action:method forControlEvents:UIControlEventTouchUpInside];
    return button;
}
+ (UIButton *)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method Title:(NSString *)title
{
    UIButton * button = [ARC createButtonWithFrame:frame Target:target Sel:method];
    [button setTitle:title forState:UIControlStateNormal];
    
    return button;
}
+ (UIButton *)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method Title:(NSString *)title NormalImageName:(NSString *)normalName
{
    UIButton * button = [ARC createButtonWithFrame:frame Target:target Sel:method Title:title];
    [button setImage:[[UIImage imageNamed:normalName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]forState:UIControlStateNormal];
    return button;
}
+ (UIButton*)createButtonWithFrame:(CGRect)frame Target:(id)target Sel:(SEL)method  Title:(NSString*)title NormalImageName:(NSString*)normalName SelectImageName:(NSString*)selectName{
    UIButton* button = [ARC createButtonWithFrame:frame Target:target Sel:method Title:title NormalImageName:normalName];
    [button setImage:[UIImage imageNamed:selectName] forState:UIControlStateHighlighted];
    return button;
}

/**创建View*/
+ (UIView*)createViewWithFrame:(CGRect)frame{

    UIView* view=[[UIView alloc] initWithFrame:frame];
    
    return view;

}

/**创建Label*/
+ (UILabel*)createLabelWithFrame:(CGRect)frame Font:(float)font Text:(NSString*)text{
    
    UILabel* label=[[UILabel alloc]initWithFrame:frame];
    label.text=text;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.font=[UIFont systemFontOfSize:font];
    
    return label;
}

/**创建ImageView*/
+ (UIImageView*)createImageViewWithFrame:(CGRect)frame ImageName:(NSString*)name{

    UIImageView* imageView=[[UIImageView alloc]initWithFrame:frame];
    imageView.contentMode = UIViewContentModeCenter;
    imageView.image=[UIImage imageNamed:name];

    return imageView;
}
/**
 *  添加线
 */
+ (UIImageView *)createImageViewLineWithHeigt:(CGFloat)height
{
    UIImageView *lineV = [[UIImageView alloc]initWithFrame:CGRectMake(0, height - 1, SCREEN_WIDTH, 1)];
    UIImage *img = [UIImage imageNamed:@"tableViewLine" ];
    lineV.image = img;
    
    return lineV;
}
#pragma mark 创建UIScrollView
+(UIScrollView*)makeScrollViewWithFrame:(CGRect)frame andSize:(CGSize)size
{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:frame];
    
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = size;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = NO;
    return scrollView;
}
+(UIPageControl*)makePageControlWithFram:(CGRect)frame pageNumber:(NSInteger )pageNumber{
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:frame];
    pageControl.numberOfPages = pageNumber;
    pageControl.currentPage = 0;
    return pageControl;
}
#pragma mark 创建UISlider
+(UISlider*)makeSliderWithFrame:(CGRect)rect AndImage:(UIImage*)image
{
    UISlider *slider = [[UISlider alloc]initWithFrame:rect];
    slider.minimumValue = 0;
    slider.maximumValue = 1;
    [slider setThumbImage:[UIImage imageNamed:@"qiu"] forState:UIControlStateNormal];
    slider.maximumTrackTintColor = [UIColor grayColor];
    slider.minimumTrackTintColor = [UIColor yellowColor];
    slider.continuous = YES;
    slider.enabled = YES;
    return slider;
}
#pragma mark 创建时间转换字符串
+(NSString *)stringFromDateWithHourAndMinute:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm"];
    NSString *destDateString = [dateFormatter stringFromDate:date];
    return destDateString;
}
#pragma mark 设置状态栏背景
+(void)SetStatusBarBackgroundColor:(UIWindow*)window BarView:(UIView*)view IsHidden:(BOOL)hidden {
    if (hidden==YES) {
        [[UIApplication  sharedApplication]setStatusBarHidden:hidden];
        window.clipsToBounds=YES;
        window.frame=CGRectMake(0, 0, window.frame.size.width, LCDH);
        view.hidden=hidden;
    }else{
        [[UIApplication  sharedApplication]setStatusBarHidden:hidden];
        window.clipsToBounds=NO;
        window.frame=CGRectMake(0, 20, window.frame.size.width, LCDH-20);
        view.hidden=hidden;
    }
}
#pragma mark - 处理图片
#pragma mark -- 图片比例设置
+(UIImage*)makeImageSize:(NSString*)imageName width:(float)a height:(float)b widthTimes:(float)c heightTimes:(float)d{
    UIImage*image=[UIImage imageNamed:imageName];
    
    UIGraphicsBeginImageContext(CGSizeMake(image.size.width*a, image.size.height*b));
    [image drawInRect:CGRectMake(c, d, image.size.width*a, image.size.height*b)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return scaledImage;
}



@end
