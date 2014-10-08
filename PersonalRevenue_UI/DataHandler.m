//
//  DataHandler.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "DataHandler.h"

@implementation DataHandler

-(instancetype) init{
    self= [super init];
    if(self){
        _myPocket = [[MyPocket alloc] init];
        _myBank = [[MyBank alloc] init];
        
        _incomeList = [[IncomeList alloc] initWithPocket:_myPocket AndMyBank:_myBank];
        _dailyExpenseList = [[DailyExpenseList alloc] initWithPocket:_myPocket];
       
    }
    return self;
}



-(void) createDatabaseExample{
    
    //testing income
    [self createIncomeListExample];
       //check the list of incomes
    [_incomeList printAll];
    [self printProgramStatus];
    
    //testing daily expense
    [self createDailyExpenseExample];
    [_dailyExpenseList printAll];
    [self printProgramStatus];
    
    
}

-(void) createIncomeListExample{
    /**** income list ***/
    
    //push this income to my pocket for daily expense
    Income *income = [[Income alloc] initWithName:@"Sell my old nokia phone" andAmount:120 andIsMontly:false andDate:[Utility createDateTimeWithYear:2013 andMonth:12 andDay:18 andHour:14 andMinute:22].date andIsBankMoney:false];
    
    //push two incomes to the bank
    Income *income2 = [[Income alloc] initWithName:@"My Salary from feeding lion" andAmount:5000 andIsMontly:true andDate:[Utility createDateTimeWithYear:2014 andMonth:1 andDay:1 andHour:17 andMinute:1].date andIsBankMoney:true];
    
    Income *income3 = [[Income alloc] initWithName:@"pickup from the road" andAmount:250 andIsMontly:false andDate:[Utility createDateTimeWithYear:2013 andMonth:12 andDay:18 andHour:14 andMinute:22].date andIsBankMoney:true];
    
    [_incomeList addIncome:income];
    [_incomeList addIncome:income2];
    [_incomeList addIncome:income3];
}

-(void) createDailyExpenseExample{
    /**** Daily Expense ****/
    
    //buy two things 
    DailyExpense *dalyEx = [[DailyExpense alloc] initWithName:@"Buy 1 kg of beef" AndLocation:@"Lotte Mark Supermaket" andAmount:5 andDate:[Utility createDateTimeWithYear:2014 andMonth:1 andDay:1 andHour:14 andMinute:00].date];
    
    DailyExpense *dalyEx2 = [[DailyExpense alloc] initWithName:@"Buy a gun" AndLocation:@"Cho Lon" andAmount:50 andDate:[Utility createDateTimeWithYear:2014 andMonth:3 andDay:13 andHour:1 andMinute:00].date];
    
    [_dailyExpenseList addDailyExpense:dalyEx];
    [_dailyExpenseList addDailyExpense:dalyEx2];
}

-(void) printProgramStatus{
    //check money in myBank and myPocket
    NSLog(@"In my Bank: %f, In my Pocket: %f", _myBank.moneyAmount, _myPocket.moneyAmount);
}

//-(bool) transferMoneyFromPocketToBank:(double)amount withDate:(NSDate *)date{
//    if(_myPocket.moneyAmount >= _myPocket.moneyAmount){
//        [_myPocket withdraw:amount];
//        return true;
//    }else{
//        return false;
//    }
//}

//-(bool) transferMoneyFromBankToPocket:(double)amount withDate:(NSDate *)date{
//    if(_myPocket.moneyAmount >= _myPocket.moneyAmount){
//        [_myPocket withdraw:amount];
//        Saving *transferTicket = [[Saving alloc] initWithName:@"Transfer Money From Bank To Pocket" andAmount:amount andIsMontly:false andDate:date];
//        _
//        
//        return true;
//    }else{
//        return false;
//    }
//}



@end
