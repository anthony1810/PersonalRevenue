//
//  ViewController.h
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "PocketPopUp.h"
#import "BankPopUp.h"
#import "TodaySpendPopUp.h"
#import "RevenueAnalyser.h"
#import "IncomesTableView.h"

@interface MainScreen : UIViewController


@property PocketPopUp *popUpPocket;
@property BankPopUp *popUpBank;
@property TodaySpendPopUp *todaySpendPopUp;
@property RevenueAnalyser *revenueAnalyser;
@property IncomesTableView *incomeTableView;

@property (weak, nonatomic) IBOutlet UILabel *pocketMoneyLbl;
@property (weak, nonatomic) IBOutlet UILabel *bankMoneyLbl;
@property (weak, nonatomic) IBOutlet UILabel *todaySpentLbl;
@property (weak, nonatomic) IBOutlet UIButton *spentLbl;

@property (weak, nonatomic) IBOutlet UIImageView *IncomeImgView;
@property (weak, nonatomic) IBOutlet UIImageView *dailyExpenseImgView;
@property (weak, nonatomic) IBOutlet UIImageView *bankTransactionLbl;
@property (weak, nonatomic) IBOutlet UIImageView *plannerImgView;
@property (weak, nonatomic) IBOutlet UIImageView *infoImgView;
@property (weak, nonatomic) IBOutlet UIImageView *analyserImgView;

@property int state;

- (IBAction)pocketTapAction:(id)sender;
- (IBAction)bankTapAction:(id)sender;
- (IBAction)todaySpentTapAction:(id)sender;

@end
