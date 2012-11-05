//
//  BNAppDelegate.h
//  BabyName
//
//  Created by dracher on 10/16/12.
//  Copyright (c) 2012 dracher. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNViewController;

@interface BNAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BNViewController *viewController;

@property (nonatomic, strong) NSMutableArray *tableData;

@end
