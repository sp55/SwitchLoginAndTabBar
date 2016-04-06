//
//  AppDelegate.h
//  SwitchLoginAndTabBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarController.h"
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property(strong,nonatomic)UINavigationController  *navController;
@property(strong,nonatomic)ViewController *loginVC;
@property(strong,nonatomic)TabBarController *tabbar;


+ (AppDelegate *)sharedappDelegate;

-(void)showLogin;
-(void)showTabBar;

@end

