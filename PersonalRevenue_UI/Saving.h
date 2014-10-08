//
//  SavingRevenue.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Saving : NSObject

@property NSString *source;
@property bool isMonthly;
@property double amount;
@property NSDate *date;

-(instancetype) initWithName: (NSString *) source andAmount: (double) amount andIsMontly: (bool) isMonthly andDate: (NSDate *) date;

-(void) print;

@end

