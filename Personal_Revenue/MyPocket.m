//
//  MyPocket.m
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "MyPocket.h"

@implementation MyPocket

-(void) addMoney:(double)amount{
    _moneyAmount += amount;
}

-(bool) withdraw:(double)amount{
    if(_moneyAmount >= amount){
        _moneyAmount -= amount;
        return true;
    }else{
        return false;
    }
}


@end
