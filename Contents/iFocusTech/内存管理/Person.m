//
//  Person.m
//  内存管理
//
//  Created by Li_JinLin on 2020/10/17.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(nullable NSZone *)zone{
    Person * psn = [[[self class] allocWithZone:zone] init];
    psn.name = [self.name copyWithZone:NULL];
    return psn;
}

- (id)mutableCopyWithZone:(NSZone *)zone{
    Person * psn = [[[self class] allocWithZone:zone] init];
    psn.name = [self.name copyWithZone:NULL];
    return psn;
}

@end


