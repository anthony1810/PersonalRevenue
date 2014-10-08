//
//  TableViewController.h
//  StaticCells
//
//  Created by Brian Mancini on 9/28/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RevenueAnalyser : UITableViewController

@property (strong, nonatomic) UITableViewCell *highestValueCell;
@property (strong, nonatomic) UITableViewCell *highestRateCell;
@property (strong, nonatomic) UITableViewCell *withdrawMostCell;
@property (strong, nonatomic) UITableViewCell *buyingTimeCell;


@property (strong, nonatomic) UILabel *highestItemValueTitle;
@property (strong, nonatomic) UILabel *highestItemValue;
@property (strong, nonatomic) UILabel *highestItemDate;

@property (strong, nonatomic) UILabel *highestSpendingRateTitle;
@property (strong, nonatomic) UILabel *highestSpendingRateValue;
@property (strong, nonatomic) UILabel *highestSpendingRateDate;

@property (strong, nonatomic) UILabel *withdrawMostMoneyTitle;
@property (strong, nonatomic) UILabel *withdrawMostMoneyValue;
@property (strong, nonatomic) UILabel *withdrawMostMoneyDate;


@property (strong, nonatomic) UILabel *buyingTimeMonthTitle;
@property (strong, nonatomic) UILabel *buyingTimeMonthValue;
@property (strong, nonatomic) UILabel *buyingTimeMonthDate;


@end
