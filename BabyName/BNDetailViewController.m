//
//  BNDetailViewController.m
//  BabyName
//
//  Created by dracher on 10/17/12.
//  Copyright (c) 2012 dracher. All rights reserved.
//

#import "BNDetailViewController.h"
#import "BNName.h"

@interface BNDetailViewController ()

@end

@implementation BNDetailViewController

@synthesize BNName;
@synthesize nameTextLabel;
@synthesize genderLabel;
@synthesize derivationLabel;
@synthesize notesLabel;
@synthesize iconImageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.nameTextLabel.text = self.BNName.nameText;
    self.genderLabel.text = self.BNName.gender;
    self.derivationLabel.text = self.BNName.derivation;
    self.notesLabel.text = self.BNName.notes;
    self.iconImageView.image = [UIImage imageNamed:self.BNName.iconName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
