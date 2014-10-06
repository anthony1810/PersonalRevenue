//
//  DailyRevenue.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DailyExpense : NSObject

@property NSString *name;
@property NSString *location;
@property double amount;
@property NSDate *date;

-(instancetype) initWithName: (NSString *) name AndLocation: (NSString *) location andAmount: (double) amount andDate: (NSDate *) date;

-(void) print;

@end
