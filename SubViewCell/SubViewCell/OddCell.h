//
//  OddCell.h
//  SubViewCell
//
//  Created by dracher on 10/23/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OddCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *backView;
@property (nonatomic, strong) IBOutlet UIImageView *iconView;
@property (nonatomic, strong) IBOutlet UILabel *cellTitle;
@property (nonatomic, strong) IBOutlet UILabel *cellContent;

@end
