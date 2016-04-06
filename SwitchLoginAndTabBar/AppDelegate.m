//
//  AppDelegate.m
//  SwitchLoginAndTabBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window =[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];

    
    
   BOOL isLogin = [[NSUserDefaults standardUserDefaults] boolForKey:@"isLogin"];
    if (isLogin) {
        [self showTabBar];
    }else{
        [self showLogin];
    }
    
    
    [self.window makeKeyAndVisible];
    self.window.backgroundColor =[UIColor whiteColor];
    
    
    return YES;
}

+(AppDelegate *)sharedappDelegate{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}
#pragma mark - 切换为登录界面

-(void)showLogin
{
    ViewController *login = [[ViewController alloc]init];
    self.navController = [[UINavigationController alloc]initWithRootViewController:login];
    self.window.rootViewController = self.navController;
}
#pragma mark - 切换为显示tabbar界面

-(void)showTabBar
{
    _tabbar = [[TabBarController alloc]init];
    //  _tabbar.selectedIndex = 1;
    self.window.rootViewController = _tabbar;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
