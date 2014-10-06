//
//  DataHandler.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IncomeList.h"
#import "SavingList.h"
#import "DailyExpenseList.h"

@interface DataHandler : NSObject

@property IncomeList *incomeList;
@property SavingList *savingList;
@property DailyExpenseList *dailyExpenseList;

-(instancetype) init;
-(void) createDatabaseExample;

@end
