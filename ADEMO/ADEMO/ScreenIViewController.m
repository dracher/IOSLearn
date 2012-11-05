//
//  ScreenIViewController.m
//  ADEMO
//
//  Created by dracher on 10/24/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import "ScreenIViewController.h"
#import "OneSrcTBCell.h"

#define kCellIdentifier @"cellNormal"

@interface ScreenIViewController ()

@end

@implementation ScreenIViewController


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
    
    [self.oneTBL registerNib:[UINib nibWithNibName:@"OneSrcTBCell" bundle:nil]
                            forCellReuseIdentifier:kCellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView Delegate

-(UIView *)tableView:(UITableView *)tableView
viewForHeaderInSection:(NSInteger)section
{
    UIView *result = nil;
    UISegmentedControl *headSegment = [[UISegmentedControl alloc] initWithItems:[[NSArray alloc]
                                                                                 initWithObjects:@"新鲜上市", @"热门推荐", nil]];
    [headSegment setSegmentedControlStyle:UISegmentedControlStyleBar];
    headSegment.frame = CGRectMake(160.0 - headSegment.frame.size.width/2, 5, headSegment.frame.size.width, headSegment.frame.size.height);

    UIImage *headBG = [UIImage imageNamed:@"headbg"];
    
    CGRect resultFrame = CGRectMake(0.0f, 0.0f,
                                    320.0f,
                                    headBG.size.height);
    NSLog(@"%f", headBG.size.height);
    result = [[UIView alloc] initWithFrame:resultFrame];
    

    result.backgroundColor = [UIColor colorWithPatternImage:headBG];

    [result addSubview:headSegment];
    
    return result;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForHeaderInSection:(NSInteger)section
{
    return 40.0;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 158.0f;
}

#pragma mark - TableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = kCellIdentifier;
    OneSrcTBCell *cell = (OneSrcTBCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.leftPic.image = [UIImage imageNamed:@"left"];
    cell.rightPic.image = [UIImage imageNamed:@"right"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

@end
