//
//  AppDelegate.m
//  runtime
//
//  Created by Li_JinLin on 2020/10/20.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"viewcontroller"];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
