//
//  Income.h
//  Personal Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Income : NSObject

@property NSString *source;
@property bool isMonthly;
@property double amount;
@property NSDate *date;
@property bool isBankMoney;
    

-(instancetype) initWithName: (NSString *) source andAmount: (double) amount andIsMontly: (bool) isMonthly andDate: (NSDate *) date andIsBankMoney: (bool) isBankMoney;
-(void) print;

@end
