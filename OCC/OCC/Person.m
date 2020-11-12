//
//  Person.m
//  OCC
//
//  Created by ShiroJoy on 2020/11/12.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.age = 0;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@,age:%ld", self.name,self.age];
}

@end
