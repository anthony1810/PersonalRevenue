//
//  IncomeList.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "IncomeList.h"

@implementation IncomeList


-(instancetype) initWithPocket: (MyPocket *) pocket AndMyBank: (MyBank *) bank{
    self = [super init];
    if(self){
        _myPocket = pocket;
        _myBank = bank;
        _container = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(NSMutableArray *) lookUpIncomesBySource:(NSString *)incomeSrc{
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
       if(self.container.count>0){
           for(Income *anIncome in self.container){
               NSRange rangeSource = [anIncome.source rangeOfString:incomeSrc];
               if(rangeSource .length != 0){
                   [resultArray addObject:anIncome];
               }
               
           }
    }
    return resultArray;
}


-(Income *) lookUpIncomeByDate: (NSDate *) dateTarget{
    Income *resultIncome;
    for(Income *anIncome in self.container){
        if([anIncome.date compare:dateTarget]==NSOrderedSame){
            resultIncome = anIncome;
        }
    }
    return resultIncome;
}

-(void) addIncome: (Income *) income{
    if(!income.isBankMoney){
        [_myPocket addMoney: income.amount];
    }else{
        [_myBank addMoney: income.amount];
    }
    [self.container addObject:income];
}

-(void) removeIncome:(Income *)income{
    if(!income.isBankMoney){
        [_myPocket withdraw:income.amount];
    }else{
        [_myBank withdraw:income.amount];
    }
    [self.container removeObjectIdenticalTo:income];
    
}

-(void) printAll{
    for(Income *aIncome in self.container){
        [aIncome print];
    }
      NSLog(@"%lu", (unsigned long)_container.count);
}

@end
