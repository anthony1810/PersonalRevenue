//
//  DailyRevenue.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "DailyExpense.h"

@implementation DailyExpense

-(instancetype) initWithName:(NSString *)name AndLocation:(NSString *)location andAmount:(double)amount andDate:(NSDate *)date{
    
    self = [super init];
    if (self) {
        self.name = name;
        self.location = location;
        self.amount = amount;
        self.date = date;
    }
    
    return self;
}

-(void) print{
    
    NSLog(@"Name: %@, location: %@, Amount: %f, Date: %@", _name, _location, _amount, _date);
    
}

@end
