//
//  QuizAppDelegate.h
//  Quiz2
//
//  Created by Rashmi Bajaj on 1/7/13.
//  Copyright (c) 2013 France Telecom Group (Orange) San Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QuizViewController *viewController;

@end
