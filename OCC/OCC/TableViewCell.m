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
        [self setupView];
    }
    return self;
}

-(void)setupView
{
    self.nameLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
//    self.nameLab.adjustsFontSizeToFitWidth = YES;
    self.nameLab.text = self.personModel.name;
//    [self.contentView addSubview: self.nameLab];
    
    self.ageLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 55, 200, 50)];
    self.ageLab.adjustsFontSizeToFitWidth = YES;
//    self.ageLab.text = [NSString stringWithFormat:@"%ld",self.personModel.age];
    [self.contentView addSubview: self.ageLab];
    
}

- (void)setPersonModel:(Person *)personModel{
    _personModel = personModel;
    _nameLab.text = personModel.name;
    _ageLab.text = [NSString stringWithFormat:@"年龄:%ld",personModel.age];
}

@end
