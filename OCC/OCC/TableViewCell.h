//
//  TableViewCell.h
//  OCC
//
//  Created by ShiroJoy on 2020/11/12.
//  Copyright © 2020 yhw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (nonatomic, strong) Person *personModel;
@property (nonatomic, strong) UILabel *nameLab;
@property (nonatomic, strong) UILabel *ageLab;
@property (nonatomic, strong) NSDictionary *dicName;

@end

NS_ASSUME_NONNULL_END
