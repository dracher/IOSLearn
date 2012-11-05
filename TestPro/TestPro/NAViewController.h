//
//  NAViewController.h
//  TestPro
//
//  Created by dracher on 10/23/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NAViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *tableData;
@property (weak, nonatomic) IBOutlet UITableView *thetable;

@end
