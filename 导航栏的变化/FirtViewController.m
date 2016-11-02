//
//  FirtViewController.m
//  导航栏的变化
//
//  Created by macbook on 2016/10/26.
//  Copyright © 2016年 daquan xu. All rights reserved.
//

#import "FirtViewController.h"

@interface FirtViewController ()

@end

@implementation FirtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    topView.backgroundColor = [UIColor redColor];
    [self.view addSubview:topView];
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
