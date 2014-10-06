//
//  DailyRevenueList.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "DailyExpenseList.h"

@implementation DailyExpenseList

-(instancetype) initWithPocket:(MyPocket *)myPocket{
    self = [super init];
    if(self){
        _myPocket = myPocket;
        _container = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(NSMutableArray *) lookUpDailyExpenseByName: (NSString *) dailyExpenseName{
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    if(self.container.count>0){
        for(DailyExpense *aDailyExpense in self.container){
            NSRange rangeSource = [aDailyExpense.name rangeOfString:dailyExpenseName];
            if(rangeSource .length != 0){
                [resultArray addObject:aDailyExpense];
            }
            
        }
    }
    return resultArray;
}

-(DailyExpense *) lookUpDailyExpenseByDate: (NSDate *) dateTarget{
    DailyExpense *resultDailyExpense;
    for(DailyExpense *aDailyExpense in self.container){
        if([aDailyExpense.date compare:dateTarget]==NSOrderedSame){
            resultDailyExpense = aDailyExpense;
        }
    }
    return resultDailyExpense;
}


-(bool) addDailyExpense:(DailyExpense *)dailyExpenseName{
    if(_myPocket.moneyAmount >= dailyExpenseName.amount){
        [_container addObject:dailyExpenseName];
        [_myPocket withdraw:dailyExpenseName.amount];
        return true;
    }else{
        return false;
    }
    
}

-(void) removeDailyExpense:(DailyExpense *)dailyExpense{
    [_container removeObjectIdenticalTo:dailyExpense];
    [_myPocket addMoney:dailyExpense.amount];
}


-(void) printAll{
    for(DailyExpense *aDailyExpense in self.container){
        [aDailyExpense print];
    }
}


@end
