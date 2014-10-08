//
//  IncomesTVC.m
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "IncomesTableView.h"

@interface IncomesTableView ()

@end

@implementation IncomesTableView

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Income List"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    if (tableView == self.searchDisplayController.searchResultsTableView) {
//        return [searchResults count];
//        
//    } else {
//        return [recipes count];
//    }
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 71;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
       IncomeTableCell *cell = (IncomeTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[IncomeTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        NSLog(@"%i", indexPath.row);

    }
    
    // Display recipe in the table cell
//    Recipe *recipe = nil;
//    if (tableView == self.searchDisplayController.searchResultsTableView) {
//        recipe = [searchResults objectAtIndex:indexPath.row];
//    } else {
//        recipe = [recipes objectAtIndex:indexPath.row];
//    }
    
    cell.sourceLbl.text = @"string";
    cell.dateLbl.text = @"12-1-2013 6:00:00";
    cell.moneyLbl.text = @"$150";
    
    return cell;
}
@end
