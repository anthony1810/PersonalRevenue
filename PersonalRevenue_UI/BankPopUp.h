//
//  BankPopUp.h
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomIOS7AlertView.h"

@interface BankPopUp : UIView

@property (strong, nonatomic) CustomIOS7AlertView* popUpContainer;
@property (strong, nonatomic) UILabel *currencyLbl;
@property (strong, nonatomic) UITextField *pocketMoneyAmountLbl;
@property (strong, nonatomic) UIButton *transferTobankBtn;
@property (strong, nonatomic) UIButton *spendItBtn;

-(void) createView;
-(void) popUp;

@end
