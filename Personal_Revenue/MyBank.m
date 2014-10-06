//
//  MyBank.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "MyBank.h"

@implementation MyBank

-(void) addMoney:(double)money{
    _moneyAmount += money;
}

-(bool) withdraw:(double)money{
    if(_moneyAmount >= money){
        _moneyAmount -= money;
        return true;
    }else{
        return false;
    }
}

@end
