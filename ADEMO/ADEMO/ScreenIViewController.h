//
//  ScreenIViewController.h
//  ADEMO
//
//  Created by dracher on 10/24/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScreenIViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *oneTBL;

@end
