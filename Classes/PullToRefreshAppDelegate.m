//
//  PullToRefreshAppDelegate.m
//  PullToRefresh
//
//  Created by Leah Culver on 7/25/10.
//  Copyright Plancast 2010. All rights reserved.
//

#import "PullToRefreshAppDelegate.h"
#import "DemoTableViewController.h"


@implementation PullToRefreshAppDelegate

@synthesize window=_window;
@synthesize navigationController=_navigationController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    CGRect screenBounds = [[UIScreen mainScreen] bounds];
	self.window = [[UIWindow alloc] initWithFrame: screenBounds];

    DemoTableViewController *demoTableViewController = [[DemoTableViewController alloc] init];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:demoTableViewController];

    [self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}

@end

