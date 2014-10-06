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
        _incomeList = [[IncomeList alloc] init];
        _savingList = [[SavingList alloc] init];
        _dailyExpenseList = [[DailyExpenseList alloc] init];
    }
    return self;
}

-(void) createDatabaseExample{
    //income list
    
    NSDate *currentDateTime = [[NSDate alloc] init];
   // currentDateTime set
//    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
//    [DateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
//    NSLog(@"%@",[DateFormatter stringFromDate:currentDateTime]);

    
    Income *income = [[Income alloc] initWithName:@"Sell my lamborgini" andAmount:1000000 andIsMontly:false andDate:currentDateTime];
}

@end
