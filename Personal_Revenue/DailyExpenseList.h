//
//  DailyRevenueList.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DailyExpense.h"

@interface DailyExpenseList : NSObject

@property NSMutableArray *container;

-(void) addDailyRevenue: (DailyExpense *) dailyExpense;
-(void) removeDailyExpense: (DailyExpense *) dailyExpense;
-(NSMutableArray *) lookUpDailyExpenseByName: (NSString *) dailyExpenseName;
-(DailyExpense *) lookUpDailyExpenseByDate: (NSDate *) dateTarget;
-(void) printAll;

@end
