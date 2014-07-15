//
//  RAAppDelegate.m
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//

#import "RAAppDelegate.h"
#import "RAViewController.h"

@implementation RAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Create the Window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Instantiate your ViewController
    RAViewController *viewController = [RAViewController new];
    
    
    // Create a NavicationController & initialize it with the viewController inside of it already.
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    // set the viewController title, not the navigationController title, NavController doesn't have a title property?
    // This time I set the tile in the viewController
    //viewController.title = @"Recipe App";
    //navigationController.title = @"Recipe App";
    navigationController.navigationBar.translucent = NO;
    
    
    // Set the Navigation Controller with the viewController inside of it to be the rootViewController
    self.window.rootViewController = navigationController;
    self.window.backgroundColor = [UIColor whiteColor];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
