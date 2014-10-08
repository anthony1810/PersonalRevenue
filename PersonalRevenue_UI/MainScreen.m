//
//  ViewController.m
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "MainScreen.h"

@interface MainScreen ()

@end

@implementation MainScreen

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) createView{
    _pocketMoneyLbl.text = @"$1800";
    _bankMoneyLbl.text = @"$5000";
    _todaySpentLbl.text = @"$120";
    _state = 0;
    
    _popUpPocket = [[PocketPopUp alloc] initWithFrame:CGRectMake(0,0,300,50)];
    _popUpBank = [[BankPopUp alloc] initWithFrame:CGRectMake(0,0,300,50)];
    _todaySpendPopUp = [[TodaySpendPopUp alloc] initWithFrame:CGRectMake(0,0,300,50)];
    _revenueAnalyser = [[RevenueAnalyser alloc] init];
    _incomeTableView = [[IncomesTableView alloc] init];
    
    _IncomeImgView.image = [UIImage imageNamed:@"income-icon.gif"];
    [self setImgViewProperties:_IncomeImgView];
    
    _dailyExpenseImgView.image = [UIImage imageNamed:@"daily-expense.png"];
    [self setImgViewProperties:_dailyExpenseImgView];
    
    _bankTransactionLbl.image = [UIImage imageNamed:@"bank.jpg"];
    [self setImgViewProperties:_bankTransactionLbl];
    
    _plannerImgView.image = [UIImage imageNamed:@"planner.png"];
   [self setImgViewProperties:_plannerImgView];

    
    _infoImgView.image = [UIImage imageNamed:@"info.ico"];
   [self setImgViewProperties:_infoImgView];
    
    _analyserImgView.image = [UIImage imageNamed:@"analyse.jpg"];
    [self setImgViewProperties:_analyserImgView];

}

-(void) setImgViewProperties: (UIImageView *) imgView{
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    imgView.userInteractionEnabled = true;
    [imgView addGestureRecognizer:[self singleTapGesture]];
}
 
     
-(UITapGestureRecognizer *) singleTapGesture{
         UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleImageTap:)];
         tap.cancelsTouchesInView = YES;
         tap.numberOfTapsRequired = 1;
         
         return tap;
}
     
-(void) handleImageTap:(UIGestureRecognizer *)gestureRecognizer {
         if(gestureRecognizer.view == _IncomeImgView){
             [self.navigationController pushViewController:_incomeTableView animated:true];
         }else if(gestureRecognizer.view == _dailyExpenseImgView){
             NSLog(@"%@", @"daily!");
         }else if(gestureRecognizer.view == _bankTransactionLbl){
             NSLog(@"%@", @"bank!");
         }else if(gestureRecognizer.view == _plannerImgView){
             NSLog(@"%@", @"planner!");
         }else if(gestureRecognizer.view == _infoImgView){
             NSLog(@"%@", @"info");
         }else if(gestureRecognizer.view == _analyserImgView){
             _revenueAnalyser.title = @"Revenue Analyser";
             [self.navigationController pushViewController:_revenueAnalyser animated:true];
         }
}
     
- (IBAction)pocketTapAction:(id)sender {
    [_popUpPocket popUp];
    
}

- (IBAction)bankTapAction:(id)sender {
    
    [_popUpBank popUp];
    
}

- (IBAction)todaySpentTapAction:(id)sender {
    
    if(_state == 2){
        [_spentLbl setTitle:@"Today You Spent" forState:UIControlStateNormal];
        [_todaySpentLbl setText:@"$120"];
        _state = 0;
    }else if(_state == 0){
        [_spentLbl setTitle:@"This Month You Spent" forState:UIControlStateNormal];
        [_todaySpentLbl setText:@"$2220"];
        _state = 1;
    }else if(_state == 1){
        [_spentLbl setTitle:@"This Year You Spent" forState:UIControlStateNormal];
        [_todaySpentLbl setText:@"$75000"];
        _state = 2;
    }
    
}
@end
