//
//  LifeCycleTestAppDelegate.h
//  LifeCycleTest
//
//  Created by k2 on 10/10/15.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LifeCycleTestViewController.h"

@interface LifeCycleTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	LifeCycleTestViewController *lctViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

