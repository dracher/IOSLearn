//
//  BNDetailViewController.h
//  BabyName
//
//  Created by dracher on 10/17/12.
//  Copyright (c) 2012 dracher. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BNName;

@interface BNDetailViewController : UIViewController

@property (nonatomic, retain) BNName *BNName;
@property (retain, strong) IBOutlet UILabel *nameTextLabel;
@property (retain, strong) IBOutlet UILabel *genderLabel;
@property (retain, strong) IBOutlet UILabel *derivationLabel;
@property (retain, strong) IBOutlet UILabel *notesLabel;
@property (retain, strong) IBOutlet UIImageView *iconImageView;

@end
