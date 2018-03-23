//
//  TabBarViewController.m
//  Test
//
//  Created by 王同钢 on 2018/3/20.
//  Copyright © 2018年 王同钢. All rights reserved.
//

#import "TabBarViewController.h"
#import "BaseNavigationController.h"
#import "BaseViewController.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray*mArr = [NSMutableArray array];
    
    //循环创建4个控制器
    
    for(int i =0; i <4; i ++) {
        
        //实例化视图控制器
        
        BaseViewController *vc = [[BaseViewController alloc]init];
        
        //设置视图的背景颜色
        
        vc.view.backgroundColor= [UIColor colorWithRed:arc4random() %10*0.1 green: arc4random() %10*0.1 blue:arc4random()%10*0.1 alpha:1];
        
        //设置名称
        
        vc.title= @"ces1";
        
        //实例化导航控制器并初始化
        
        BaseNavigationController *nav = [[BaseNavigationController alloc]initWithRootViewController:vc];
        
        //添加视图控制器到数组
        
        [mArr addObject:nav];
        
    }
    self.viewControllers=mArr;

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
