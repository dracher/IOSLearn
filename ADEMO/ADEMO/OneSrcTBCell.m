//
//  OneSrcTBCell.m
//  ADEMO
//
//  Created by dracher on 11/5/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import "OneSrcTBCell.h"

@implementation OneSrcTBCell

@synthesize leftPic = _leftPic;
@synthesize rightPic = _rightPic;

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
