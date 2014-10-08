//
//  BankPopUp.m
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "BankPopUp.h"

@implementation BankPopUp

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
    }
    return self;
}

-(void) createView{
    
    UILabel *moneyLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0,150, 50)];
    [moneyLabel setText:@"Money in Bank: "];
    _currencyLbl = [[UILabel alloc] initWithFrame:CGRectMake(150, 0, 20, 50)];
    [_currencyLbl setText:@"$"];
    _pocketMoneyAmountLbl = [[UITextField alloc] initWithFrame:CGRectMake(160, 2, 100, 50)];
    _pocketMoneyAmountLbl.text = @"5000";
    [_pocketMoneyAmountLbl setTextColor:[UIColor blueColor]];
    
    [self addSubview:moneyLabel];
    [self addSubview:_currencyLbl];
    [self addSubview:_pocketMoneyAmountLbl];
    
    _popUpContainer = [[CustomIOS7AlertView alloc] init];
    [_popUpContainer setContainerView:self];
    // Modify the parameters
    [_popUpContainer setButtonTitles:[NSMutableArray arrayWithObjects:@"Transfer To Pocket",@"Close" , nil]];
    
    [_popUpContainer setUseMotionEffects:true];
    // And launch the dialog
    
    [_popUpContainer setDelegate:self];
  
    
}

-(void) popUp{
    [_popUpContainer show];
}

- (void)customIOS7dialogButtonTouchUpInside: (CustomIOS7AlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex
{
    if(buttonIndex == 1){
        [_popUpContainer close];
    }else{
        [_popUpContainer close];
    }
}



@end
