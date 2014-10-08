//
//  IncomeTableCell.h
//  PersonalRevenue_UI
//
//  Created by FCS on 10/7/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IncomeTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *sourceLbl;
@property (weak, nonatomic) IBOutlet UILabel *dateLbl;
@property (weak, nonatomic) IBOutlet UILabel *moneyLbl;

@end
