//
//  OddCell.m
//  SubViewCell
//
//  Created by dracher on 10/23/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import "OddCell.h"

@implementation OddCell

@synthesize backView = _backView;
@synthesize iconView = _iconView;
@synthesize cellTitle = _cellTitle;
@synthesize cellContent = _cellContent;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
