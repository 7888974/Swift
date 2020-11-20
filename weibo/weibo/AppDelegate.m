//
//  AppDelegate.m
//  weibo
//
//  Created by ShiroJoy on 2020/11/20.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    MainViewController *vc = MainViewController.new;
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}



@end
