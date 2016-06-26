//
//  CNavigationController.m
//  cuo
//
//  Created by wengyi on 16/6/6.
//  Copyright © 2016年 aikeyi. All rights reserved.
//

#import "CNavigationController.h"
#import "UIBarButtonItem+Extension.h"
@interface CNavigationController ()

@end

@implementation CNavigationController
//    这个方法只调用一次可以设置所以的item主题样式
+(void)initialize{
    
    //    设置普通状态
    UIBarButtonItem *itme =[UIBarButtonItem appearance];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:9];
    dict[NSForegroundColorAttributeName] = [UIColor orangeColor];
    //  key：N Sxxxx AttributeName]
    [itme setTitleTextAttributes:dict forState:UIControlStateNormal];
    //设置不可点击状态
    NSMutableDictionary *dict1 = [NSMutableDictionary dictionary];
    dict1[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    dict1[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
    
    //  key：N Sxxxx AttributeName]
    [itme setTitleTextAttributes:dict1 forState:UIControlStateDisabled];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count>0) {
        //        自动隐藏和显示tabbar
        viewController.hidesBottomBarWhenPushed = YES;
        //        设置左边的返回按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"tabbar_discover_selected" highImageName:@"tabbar_discover_selected" target:self action:@selector(back)];
    }
    [super pushViewController:viewController animated:animated];
}
-(void)back{
    [self popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
