//
//  Income.m
//  Personal Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "Income.h"

@implementation Income
-(instancetype) initWithName: (NSString *) source andAmount: (double) amount andIsMontly: (bool) isMonthly andDate: (NSDate *) date andIsBankMoney: (bool) isBankMoney{
    
    self = [super init];
    if(self){
        self.source = source;
        self.amount = amount;
        self.isMonthly = isMonthly;
        self.date = date;
        self.isBankMoney = isBankMoney;
    }
    
    return self;
}

-(void) print{
    NSLog(@"Income Src: %@, Is Monthly: %i, Amount: %f, Date: %@", _source, _isMonthly, _amount, _date);
}

@end
