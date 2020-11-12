//
//  TableViewCell.m
//  OCC
//
//  Created by ShiroJoy on 2020/11/12.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initView];
    }
    return self;
}

-(void)initView
{
    self.nameLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.nameLab.adjustsFontSizeToFitWidth = YES;
    [self.contentView addSubview: self.nameLab];
    
    self.ageLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 55, 50, 50)];
    self.ageLab.adjustsFontSizeToFitWidth = YES;
    [self.contentView addSubview: self.ageLab];
    
    self.dicName = [NSDictionary new];
    self.nameLab = [self.dicName objectForKey:@"name"];
    self.ageLab = [self.dicName objectForKey:@"age"];
}

@end
