//
//  SavingRevenueList.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "SavingList.h"

@implementation SavingList

-(instancetype) init{
    self = [super self];
    if(self)
        _container = [[NSMutableArray alloc] init];
    
    return self;
}

-(NSMutableArray *) lookUpSavingsBySource: (NSString *) savingSrc{
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    if(self.container.count>0){
        for(Saving *aSaving in self.container){
            NSRange rangeSource = [aSaving.source rangeOfString:savingSrc];
            if(rangeSource .length != 0){
                [resultArray addObject:aSaving];
            }
            
        }
    }
    return resultArray;
}

-(Saving *) lookUpSavingByDate: (NSDate *) dateTarget{
    Saving *resultSaving;
    for(Saving *aSaving in self.container){
        if([aSaving.date compare:dateTarget]==NSOrderedSame){
            resultSaving = aSaving;
        }
    }
    return resultSaving;
}

-(void) addSaving: (Saving *) savingRevenue{
    [self.container addObject:savingRevenue];
}

-(void) removeSaving: (Saving *) savingRevenue{
    [self.container removeObjectIdenticalTo:savingRevenue];
    
}

-(void) printAll{
    for(Saving *aSaving in self.container){
        [aSaving print];
    }
}



@end
