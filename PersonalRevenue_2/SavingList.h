//
//  SavingRevenueList.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Saving.h"
#import "Income.h"
#import "MyBank.h"

@interface SavingList : NSObject

@property NSMutableArray *container;
@property MyBank *myBank;

-(instancetype) initWithBank: (MyBank *) bank;
-(void) addSaving: (Income *) income;
-(void) removeSaving: (Income *) income;
-(NSMutableArray *) lookUpSavingsBySource: (NSString *) savingSrc;
-(Income *) lookUpSavingByDate: (NSDate *) dateTarget;
-(void) printAll;


@end
