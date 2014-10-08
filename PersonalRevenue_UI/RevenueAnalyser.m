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
    [self createHighestValueView];
    [self createHighestRateView];
    [self createWithdrawMostView];
    [self createBuyingTimeView];
    
}

-(void) createHighestValueView{
    
    /**** highest value item cell ****/
    self.highestValueCell = [[UITableViewCell alloc] init];
    
    //title
    [self.highestValueCell addSubview:[self setLabelToCellTitle:_highestItemValueTitle andText:@"Buy A Huyndai"]];
    //money
    [self.highestValueCell addSubview:[self setLabelToCellMoney:_highestItemValue andText:@"$120000"]];
    //date
    [self.highestValueCell addSubview:[self setLabelToCellDate:_highestItemDate andText:@"18/10/1991 6:00:00"]];
}

-(void) createHighestRateView{
    /**** highest rate item cell ****/
    self.highestRateCell = [[UITableViewCell alloc] init];
    
    //title
    [self.highestRateCell addSubview:[self setLabelToCellTitle:_highestSpendingRateTitle andText:@"Buy A Huyndai"]];
    //money
    [self.highestRateCell addSubview:[self setLabelToCellMoney:_highestSpendingRateValue andText:@"$120000"]];
    //date
    [self.highestRateCell addSubview:[self setLabelToCellDate:_highestSpendingRateDate andText:@"18/10/1991 6:00:00"]];

}

-(void) createWithdrawMostView{
    /**** highest withdraw Most Money cell ****/
    self.withdrawMostCell = [[UITableViewCell alloc] init];
    
    //title
    [self.withdrawMostCell addSubview:[self setLabelToCellTitle:_withdrawMostMoneyTitle andText:@"Buy A Huyndai"]];
    //money
    [self.withdrawMostCell addSubview:[self setLabelToCellMoney:_withdrawMostMoneyValue andText:@"$120000"]];
    //date
    [self.withdrawMostCell addSubview:[self setLabelToCellDate:_withdrawMostMoneyDate
                                                       andText:@"18/10/1991 6:00:00"]];
}

-(void) createBuyingTimeView{
    
    /**** highest buying time item cell ****/
    self.buyingTimeCell = [[UITableViewCell alloc] init];
    
    //title
    [self.buyingTimeCell addSubview:[self setLabelToCellTitle:_buyingTimeMonthTitle
                                                      andText:@"Buy A Huyndai"]];
    //money
    [self.buyingTimeCell addSubview:[self setLabelToCellMoney:_buyingTimeMonthValue andText:@"$120000"]];
    //date
    [self.buyingTimeCell addSubview:[self setLabelToCellDate:_buyingTimeMonthDate andText:@"18/10/1991 6:00:00"]];
}

#pragma Table View Data Source

// Return the number of sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(UILabel *) setLabelToCellTitle: (UILabel *) labelTarget andText: (NSString *) text{
    labelTarget =[[UILabel alloc] initWithFrame:CGRectMake(20, 0, 150, 30)];
    [labelTarget setText:text];
    [labelTarget setTextColor:[UIColor blueColor]];
    [labelTarget setFont:[UIFont systemFontOfSize:12]];
    return labelTarget;
}

-(UILabel *) setLabelToCellMoney: (UILabel *) labelTarget andText: (NSString *) text{
    labelTarget = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 150, 30)];
    [labelTarget setFont:[UIFont systemFontOfSize:10]];
    [labelTarget setText:text];
    [labelTarget setTextColor:[UIColor grayColor]];
    return labelTarget;
}

-(UILabel *) setLabelToCellDate: (UILabel *) labelTarget andText: (NSString *) text{
    labelTarget = [[UILabel alloc] initWithFrame:CGRectMake(220, 20, 150, 30)];
    [labelTarget setText:text];
    [labelTarget setFont:[UIFont systemFontOfSize:10]];
    [labelTarget setTextColor:[UIColor grayColor]];
    return labelTarget;
}


// Return the number of rows for each section in your static table
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

// Return the row for the corresponding section and row
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch(indexPath.section)
    {
        case 0:
        switch(indexPath.row)
        {
            case 0: return self.highestValueCell;  // section 0, row 0 is the first name
        }
        case 1:
        switch(indexPath.row)
        {
            case 0: return self.highestRateCell;      // section 1, row 0 is the share option
        }
        case 2:
            switch(indexPath.row)
        {
            case 0: return self.withdrawMostCell;      // section 1, row 0 is the share option
        }
        case 3:
            switch(indexPath.row)
        {
            case 0: return self.buyingTimeCell;      // section 1, row 0 is the share option
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
