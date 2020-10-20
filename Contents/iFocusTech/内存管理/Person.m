//
//  Person.m
//  内存管理
//
//  Created by Li_JinLin on 2020/10/17.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    Person * psn = [[[self class] allocWithZone:zone] init];
    if (psn) {
    }
    return psn;
}

@end
