//
//  ViewController.m
//  导航栏的变化
//
//  Created by macbook on 2016/10/25.
//  Copyright © 2016年 daquan xu. All rights reserved.
//

#import "ViewController.h"
#import "UIView+sport.h"
#import "FirtViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"颜色变化";
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor clearColor];
    UITableView *tab  = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    UIView *view = [UIView new];
    view.str = @"11111111111";
    [view eat];
    NSLog(@"==========%@",view.str);
    tab.delegate = self;
    tab.dataSource = self;
    [self.view addSubview:tab];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 100.f;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIndetifer = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndetifer];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndetifer];
        cell.textLabel.text = @"测试数据";
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FirtViewController *first = [[FirtViewController alloc]init];
    [self.navigationController pushViewController:first animated:YES];
}
#pragma mark----------UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat radious = scrollView.bounds.origin.y;
    
    if (radious == -64) {
        [UIView animateWithDuration:2 animations:^{
            self.navigationController.navigationBar.hidden = NO;
        }];
        self.navigationController.navigationBar.barTintColor = [UIColor clearColor];;
    }else if (radious < -64){
        [UIView animateWithDuration:2 animations:^{
            self.navigationController.navigationBar.hidden = YES;
        }];
        
    }else if(radious > -64){
        [UIView animateWithDuration:2 animations:^{
            self.navigationController.navigationBar.hidden = NO;
        }];
        self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:radious/255.0 green:128/255.0 blue:220/255.0 alpha:1];
    }
    NSLog(@"%f",scrollView.bounds.origin.y);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
