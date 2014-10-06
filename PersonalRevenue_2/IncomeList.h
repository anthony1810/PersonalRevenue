//
//  IncomeList.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Income.h"
#import "MyPocket.h"
#import "MyBank.h"


@interface IncomeList : NSObject

@property NSMutableArray *container;
@property MyPocket *myPocket;
@property MyBank *myBank;

-(instancetype) initWithPocket: (MyPocket *) pocket AndMyBank: (MyBank *) bank;
-(void) addIncome: (Income *) income;
-(void) removeIncome: (Income *) income;
-(NSMutableArray *) lookUpIncomesBySource: (NSString *) incomeSrc;
-(Income *) lookUpIncomeByDate: (NSDate *) dateTarget;
-(void) printAll;

@end
