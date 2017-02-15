//
//  RxTabVC.m
//  MVVMModel
//
//  Created by RXL on 17/2/15.
//  Copyright © 2017年 RXL. All rights reserved.
//

#import "RxTabVC.h"
#import "RxHomeVC.h"
#import "RxNearVC.h"


@interface RxTabVC ()

@end

@implementation RxTabVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RxHomeVC *homeVC = [[RxHomeVC alloc] init];
    RxNearVC *nearVc = [[RxNearVC alloc] init];
    
    [self controller:homeVC title:@"首页"];
    [self controller:nearVc title:@"附近"];
    
    
    
}


#pragma mark - 自定义方法
- (void)controller:(UIViewController *)vc title:(NSString *)title
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    vc.title = title;

    [self addChildViewController:nav];
}


@end
