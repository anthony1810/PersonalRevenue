//
//  PocketPopUp.m
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "PocketPopUp.h"

@implementation PocketPopUp

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
    [moneyLabel setText:@"Money in pocket: "];
    _currencyLbl = [[UILabel alloc] initWithFrame:CGRectMake(150, 0,20, 50)];
    [_currencyLbl setText:@"$"];
    _pocketMoneyAmountTf = [[UITextField alloc] initWithFrame:CGRectMake(160, 2, 100, 50)];
    _pocketMoneyAmountTf.text = @"1800";
    [_pocketMoneyAmountTf setTextColor:[UIColor blueColor]];
    
    [self addSubview:moneyLabel];
    [self addSubview:_currencyLbl];
    [self addSubview:_pocketMoneyAmountTf];

    _popUpContainer = [[CustomIOS7AlertView alloc] init];
    [_popUpContainer setContainerView:self];
    // Modify the parameters
    [_popUpContainer setButtonTitles:[NSMutableArray arrayWithObjects:@"Transfer To Bank",@"Close" , nil]];
    
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
