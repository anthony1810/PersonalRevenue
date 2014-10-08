//
//  TodaySpendPopUp.h
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "CustomIOS7AlertView.h"

@interface TodaySpendPopUp : UIView

@property (strong, nonatomic) CustomIOS7AlertView* popUpContainer;
@property (strong, nonatomic) UILabel *pocketMoneyAmountLbl;
@property (strong, nonatomic) UIButton *transferTobankBtn;
@property (strong, nonatomic) UIButton *spendItBtn;

-(void) createView;
-(void) popUp;


@end
