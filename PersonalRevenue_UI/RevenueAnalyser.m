//
//  TableViewController.m
//  StaticCells
//
//  Created by Brian Mancini on 9/28/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import "RevenueAnalyser.h"


@implementation RevenueAnalyser

- (void)loadView
{
    [super loadView];
    
    // set the title
    self.title = @"Revenue Analyser";

    // construct first name cell, section 0, row 0
    self.highestValueCell1 = [[UITableViewCell alloc] init];
    self.highestValueCell1.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    
    self.highestValueCell2 = [[UITableViewCell alloc] init];
    self.highestValueCell2.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    
    self.highestRateCell1 = [[UITableViewCell alloc] init];
    self.highestRateCell1.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    
    self.highestRateCell2 = [[UITableViewCell alloc] init];
    self.highestRateCell2.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    
    self.withdrawMostCell1 = [[UITableViewCell alloc] init];
    self.withdrawMostCell1.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    
    self.withdrawMostCell2 = [[UITableViewCell alloc] init];
    self.withdrawMostCell2.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    
    self.buyingTimeCell1 = [[UITableViewCell alloc] init];
    self.buyingTimeCell1.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    
    self.buyingTimeCell2 = [[UITableViewCell alloc] init];
    self.buyingTimeCell2.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];

}

#pragma Table View Data Source

// Return the number of sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

// Return the number of rows for each section in your static table
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch(section)
    {
        case 0:  return 2;  // section 0 has 2 rows
        case 1:  return 2;  // section 1 has 1 row
        case 2:  return 2;  // section 2 has 2 rows
        case 3:  return 2;  // section 3 has 1 row
        default: return 0;
    };
}

// Return the row for the corresponding section and row
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch(indexPath.section)
    {
        case 0:
        switch(indexPath.row)
        {
            case 0: return self.highestValueCell1;  // section 0, row 0 is the first name
            case 1: return self.highestValueCell2;   // section 0, row 1 is the last name
        }
        case 1:
        switch(indexPath.row)
        {
            case 0: return self.highestRateCell1;      // section 1, row 0 is the share option
            case 1: return self.highestRateCell2;      // section 1, row 0 is the share option
        }
        case 2:
            switch(indexPath.row)
        {
            case 0: return self.withdrawMostCell1;      // section 1, row 0 is the share option
            case 1: return self.withdrawMostCell2;      // section 1, row 0 is the share option
        }
        case 3:
            switch(indexPath.row)
        {
            case 0: return self.buyingTimeCell1;      // section 1, row 0 is the share option
            case 1: return self.buyingTimeCell2;      // section 1, row 0 is the share option
        }
            
    }
    return nil;
}

#pragma Table View Delegate

// Customize the section headings for each section
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch(section)
    {
        case 0: return @"Highest Value Item";
        case 1: return @"Highest Spending Rate";
        case 2: return @"Withdraw Most Money";
        case 3: return @"Buying Time This Month";
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

@end
