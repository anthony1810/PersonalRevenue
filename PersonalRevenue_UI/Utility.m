//
//  Utility.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+(NSDateComponents *) createDateTimeWithYear: (int) year andMonth: (int) month andDay: (int) day andHour: (int) hour andMinute: (int) minute{
    
    NSDateComponents *myDateTime = [[NSDateComponents alloc] init];
    [myDateTime setYear:year];
    [myDateTime setMonth:month];
    [myDateTime setDay:day];
    [myDateTime setHour:hour];
    [myDateTime setMinute:minute];
    
    return myDateTime;
}

@end
