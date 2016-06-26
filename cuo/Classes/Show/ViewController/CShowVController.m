//
//  CShowVController.m
//  cuo
//
//  Created by 翁仪 on 16/6/23.
//  Copyright © 2016年 baohe. All rights reserved.
//

#import "CShowVController.h"
#import "PrefixHeader.pch"
#import "CNextViewController.h"
@interface CShowVController ()

@end

@implementation CShowVController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   UIButton *btn =  [ARC createButtonWithFrame:CGRectMake(0, 100, 50, 50) Target:self Sel:@selector(next)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
}

-(void)next{
    
    CNextViewController *nextvVC = [[CNextViewController alloc] init];
    
    [self.navigationController pushViewController:nextvVC animated:YES];
}
-(void)viewDidAppear:(BOOL)animated{

    [self setNav];

}
-(void)setNav{

//[[self navigationController] setNavigationBarHidden:YES animated:NO];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   
   }

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
