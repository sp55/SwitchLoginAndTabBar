//
//  TabBarController.m
//  SwitchLoginAndTabBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "TabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

#define RGB(r, g, b) [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) /255.0) alpha:1.0]



@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewController:@"FirstViewController" title:@"First" image:@"" selectedImage:@""];
    [self addChildViewController:@"SecondViewController" title:@"Second" image:@"" selectedImage:@""];

}
- (void)addChildViewController:(NSString *)childController title:(NSString *)title image:(NSString *)normalImg selectedImage:(NSString *)selectedImg {
    Class class = NSClassFromString(childController);
    UIViewController *controller = [[class alloc] init];
    controller.title = title;

    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:controller];
    [navi.tabBarItem setImage:[[UIImage imageNamed:normalImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [navi.tabBarItem setImageInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [navi.tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [navi.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0f]} forState:UIControlStateNormal];
    [navi.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : RGB(37, 175, 153)} forState:UIControlStateSelected];
    [self addChildViewController:navi];
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
