//
//  BNViewController.m
//  BabyName
//
//  Created by dracher on 10/16/12.
//  Copyright (c) 2012 dracher. All rights reserved.
//

#import "BNViewController.h"
#import "BNName.h"

@interface BNViewController ()

@end

@implementation BNViewController

@synthesize tableData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Baby Names";
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSIndexPath *selectedIndexPath = [self.theTableView indexPathForSelectedRow];
    
    [self.theTableView deselectRowAtIndexPath:selectedIndexPath animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate Methods

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    if (self.tableData != nil)
    {
        return [self.tableData count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"BabyNameCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:cellIdentifier];
    }
    
    BNName *tempName = [self.tableData objectAtIndex:indexPath.row];
    
    cell.textLabel.text = tempName.nameText ;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BNDetailViewController *detailViewController = [[BNDetailViewController alloc] initWithNibName:@"BNDetailViewController" bundle:nil];
    
    detailViewController.BNName = [self.tableData objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:detailViewController animated:YES];
}

@end
