//
//  CUITabBarController.m
//  cuo
//
//  Created by wengyi on 16/6/6.
//  Copyright © 2016年 aikeyi. All rights reserved.
//
//随机色

#define RandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0];
#import "CUITabBarController.h"
#import "CShowVController.h"
#import "CCouShowVController.h"
#import "CDiscoverVController.h"
#import "CMineVController.h"
#import "CNavigationController.h"
#import "PrefixHeader.pch"
#import "CUITabBar.h"
@interface CUITabBarController ()<UITabBarDelegate>

@end

@implementation CUITabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    加载秀场控制器
    CShowVController *show = [[CShowVController alloc]init];
    [self addchildVc:show Title:@"秀场" image:@"" selectedimage:@""];
//    加载秀措控制器
    CCouShowVController *product = [[CCouShowVController alloc]init];
    [self addchildVc:product Title:@"措秀" image:@"" selectedimage:@""];
//    加载发现控制器
    CDiscoverVController *wrong = [[CDiscoverVController alloc]init];
    [self addchildVc:wrong Title:@"发现" image:@"" selectedimage:@""];
//    加载我的控制器
    CMineVController *coterie = [[CMineVController alloc]init];
    [self addchildVc:coterie Title:@"我的" image:@"" selectedimage:@""];
//    添加自定义tabbar
    [self addCustomTabBar];
}
/**
 *  创建自定义tabbar
 */
- (void)addCustomTabBar
{
    // 创建自定义tabbar
    CUITabBar *customTabBar = [[CUITabBar alloc] init];
    customTabBar.delegate = self;
    // 更换系统自带的tabbar
    [self setValue:customTabBar forKeyPath:@"tabBar"];
}

-(void)addchildVc:(UIViewController *)childVc Title:(NSString *)title image:(NSString *)image selectedimage:(NSString *)selectedimage
{
    
    // 1.       设置子控制器的文字和图片
            childVc.view.backgroundColor = RandomColor;
//                childVc.tabBarItem.title = title;
//                childVc.navigationItem.title = title;
                childVc.title =title;//同时设置tabbar和navigation的文字

    //    声明：图片要按照原来的样子显示出来，不要被渲染成其他的颜色
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedimage] imageWithRenderingMode:UIImageRenderingModeAutomatic];
    childVc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAutomatic];
    
    //  2.      设置文字的颜色
    
    [[UITabBar appearance] setTintColor:[UIColor orangeColor]];

    //    添加为包装了导航条的子控制器
    CNavigationController *nav = [[CNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
 
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
