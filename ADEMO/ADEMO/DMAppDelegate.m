//
//  DMAppDelegate.m
//  ADEMO
//
//  Created by dracher on 10/24/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import "DMAppDelegate.h"
#import "ScreenIViewController.h"
#import "ScreenIIViewController.h"
#import "ScreenIIIViewController.h"
#import "ScreenIVViewController.h"

@implementation DMAppDelegate

@synthesize theRootTabCTL;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    theRootTabCTL = [[UITabBarController alloc] init];
    
    ScreenIViewController *scrICTL = [[ScreenIViewController alloc] initWithNibName:nil bundle:nil];
    UIImage *imageOne = [UIImage imageNamed:@"new"];
    UITabBarItem *itemOne = [[UITabBarItem alloc] initWithTitle:@"热门" image:imageOne tag:1000];
    [scrICTL setTabBarItem:itemOne];
    
    ScreenIIViewController *scrIICTL = [[ScreenIIViewController alloc] initWithNibName:nil bundle:nil];
    UIImage *imageTwo = [UIImage imageNamed:@"text-list"];
    UITabBarItem *itemtwo = [[UITabBarItem alloc] initWithTitle:@"分类" image:imageTwo tag:1010];
    [scrIICTL setTabBarItem:itemtwo];
    
    ScreenIIIViewController *scrIIICTL = [[ScreenIIIViewController alloc] initWithNibName:nil bundle:nil];
    UIImage *imageThree = [UIImage imageNamed:@"love"];
    UITabBarItem *itemThree = [[UITabBarItem alloc] initWithTitle:@"喜欢" image:imageThree tag:1020];
    [scrIIICTL setTabBarItem:itemThree];
    
    ScreenIVViewController *scrIVVCTL = [[ScreenIVViewController alloc] initWithNibName:nil bundle:nil];
    UIImage *imageFour = [UIImage imageNamed:@"gear"];
    UITabBarItem *itemFour = [[UITabBarItem alloc] initWithTitle:@"设置" image:imageFour tag:1030];
    [scrIVVCTL setTabBarItem:itemFour];
    
    NSArray *controllers = [[NSArray alloc] initWithObjects:scrICTL, scrIICTL, scrIIICTL, scrIVVCTL, nil];
    theRootTabCTL.viewControllers = controllers;
    //theRootTabCTL.view.alpha = 0.7;
    
    self.window.rootViewController = theRootTabCTL;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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
