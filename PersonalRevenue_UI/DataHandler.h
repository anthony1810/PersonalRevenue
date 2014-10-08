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
#import "Utility.h"
#import "MyPocket.h"
#import "MyBank.h"

@interface DataHandler : NSObject

@property IncomeList *incomeList;
@property DailyExpenseList *dailyExpenseList;
@property SavingList *savingList;
@property MyPocket *myPocket;
@property MyBank *myBank;

-(instancetype) init;
-(void) createDatabaseExample;
-(void) printProgramStatus;
//-(bool) transferMoneyFromPocketToBank: (double) amount withDate: (NSDate *) date;
//-(bool) transferMoneyFromBankToPocket: (double) amount withDate: (NSDate *) date;

@end
