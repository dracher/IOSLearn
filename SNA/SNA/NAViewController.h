//
//  NAViewController.h
//  SNA
//
//  Created by dracher on 10/22/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NAViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property NSArray *tableData;
@property (nonatomic, strong) UILocalizedIndexedCollation *collation;
@property (nonatomic, strong) NSMutableArray *outerArray;
@property (nonatomic, strong) NSArray *indexTitleArray;

@end
