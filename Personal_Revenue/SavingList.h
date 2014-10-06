//
//  SavingRevenueList.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Saving.h"

@interface SavingList : NSObject

@property NSMutableArray *container;
-(instancetype) init;
-(void) addSaving: (Saving *) savingRevenue;
-(void) removeSaving: (Saving *) savingRevenue;
-(NSMutableArray *) lookUpSavingsBySource: (NSString *) savingSrc;
-(Saving *) lookUpSavingByDate: (NSDate *) dateTarget;
-(void) printAll;


@end
