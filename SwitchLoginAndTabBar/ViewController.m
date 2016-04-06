//
//  ViewController.m
//  SwitchLoginAndTabBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"登录";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"登录" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blackColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont systemFontOfSize:18];
    button.frame = CGRectMake(100, 200, 100, 44);
    [self.view addSubview:button];
    
    
}
- (void)loginAction {
    
    [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"isLogin"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
    [[AppDelegate sharedappDelegate] showTabBar];

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
