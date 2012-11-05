//
//  NAViewController.m
//  SNA
//
//  Created by dracher on 10/22/12.
//  Copyright (c) 2012 JMCX. All rights reserved.
//

#import "NAViewController.h"

@interface NAViewController ()

-(void)configureSectionData;

@end

@implementation NAViewController
@synthesize tableData, collation, outerArray, indexTitleArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSBundle* bundle = [NSBundle mainBundle];
    
    NSString* plistPath = [bundle pathForResource:@"Names" ofType:@"plist"];
    
    NSDictionary *namesDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    
    self.tableData = [namesDictionary objectForKey:@"Names"];
    self.collation = [UILocalizedIndexedCollation currentCollation];
    
    [self configureSectionData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

-(void)configureSectionData
{
    NSUInteger sectionTitleCount = [collation.sectionTitles count];
    
    self.outerArray = [NSMutableArray arrayWithCapacity:sectionTitleCount];
    
    for (NSUInteger index = 0; index < sectionTitleCount; index++)
    {
        NSMutableArray *array = [NSMutableArray array];
        [self.outerArray addObject:array];
    }
    for (NSString *nameString in tableData)
    {
        NSInteger sectionNumber = [collation sectionForObject:nameString collationStringSelector:@selector(lowercaseString)];
        NSMutableArray *sectionNames = [self.outerArray objectAtIndex:sectionNumber];
        
        [sectionNames addObject:nameString];
    }
    
    for (NSUInteger index = 0; index < sectionTitleCount; index++)
    {
        NSMutableArray *nameForSection = [self.outerArray objectAtIndex:index];
        NSArray *sortedNamesForSection = [collation sortedArrayFromArray:nameForSection collationStringSelector:@selector(lowercaseString)];
        [self.outerArray replaceObjectAtIndex:index withObject:sortedNamesForSection];
    }
}

#pragma mark - UI Table Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.collation.sectionTitles count];
}

- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section
{
    NSString *theLetter = [self.collation.sectionTitles objectAtIndex:section];
    
    if (![theLetter isEqualToString:@"#"]) {
        NSString *titleString = [NSString stringWithFormat:@"Names for the letter %@", theLetter];
        return titleString;
    }
    return nil;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return self.collation.sectionTitles;
}

- (NSInteger)tableView:(UITableView *)tableView
sectionForSectionIndexTitle:(NSString *)title
               atIndex:(NSInteger)index
{
    return [self.collation sectionForSectionIndexTitleAtIndex:index];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    NSArray *innerArray = [self.outerArray objectAtIndex:section];
    return [innerArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellidentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:cellidentifier];
    }
    
    NSArray *innerArray = [self.outerArray objectAtIndex:indexPath.section];
    NSString *theName = [innerArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = theName;
    
    return cell;
}
@end
