//
//  AlertMongerTestAppDelegate.h
//  AlertMongerTest
//
//  Created by Jon Gilkison on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AlertMongerTestViewController;

@interface AlertMongerTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AlertMongerTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AlertMongerTestViewController *viewController;

@end

