//
//  TableViewController.h
//  StaticCells
//
//  Created by Brian Mancini on 9/28/14.
//  Copyright (c) 2014 iOSExamples. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RevenueAnalyser : UITableViewController

@property (strong, nonatomic) UITableViewCell *highestValueCell1;
@property (strong, nonatomic) UITableViewCell *highestValueCell2;
@property (strong, nonatomic) UITableViewCell *highestRateCell1;
@property (strong, nonatomic) UITableViewCell *highestRateCell2;
@property (strong, nonatomic) UITableViewCell *withdrawMostCell1;
@property (strong, nonatomic) UITableViewCell *withdrawMostCell2;
@property (strong, nonatomic) UITableViewCell *buyingTimeCell1;
@property (strong, nonatomic) UITableViewCell *buyingTimeCell2;

@property (strong, nonatomic) UITextField *firstNameText;
@property (strong, nonatomic) UITextField *lastNameText;

@end
