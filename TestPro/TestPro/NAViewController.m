//
//  NAViewController.m
//  TestPro
//
//  Created by dracher on 10/23/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import "NAViewController.h"

enum {
    kImageLeft = 1000,
    kImageRight = 1010
};

@interface NAViewController ()

@end

@implementation NAViewController

@synthesize tableData;
@synthesize thetable;

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableData = [[NSArray alloc] initWithObjects:@"Alan", @"Billy", @"Coban", nil];
    
	// Do any additional setup after loading the view, typically from a nib.
    [thetable registerNib:[UINib nibWithNibName:@"myCell" bundle:nil] forCellReuseIdentifier:@"CustomCell"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 163.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CustomCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    UIImageView *imageLeft = (UIImageView *)[cell viewWithTag:kImageLeft];
    imageLeft.image = [UIImage imageNamed:@"left"];
    
    UIImageView *imageRight = (UIImageView *)[cell viewWithTag:kImageRight];
    imageRight.image = [UIImage imageNamed:@"right"];
    
    
        
    return cell;
}

#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@", [tableView cellForRowAtIndexPath:indexPath]);
}

@end
