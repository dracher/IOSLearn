//
//  BNViewController.h
//  BabyName
//
//  Created by dracher on 10/16/12.
//  Copyright (c) 2012 dracher. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BNDetailViewController.h"

@interface BNViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *tableData;
@property (strong, nonatomic) IBOutlet UITableView *theTableView;

@end
