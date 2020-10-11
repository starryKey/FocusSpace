//
//  Person.m
//  07抽象类和类簇
//
//  Created by Li_JinLin on 2020/10/4.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Person.h"

@interface Person()

@end

@implementation Person

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    Person * psn = [[[self class] allocWithZone:zone] init];
    if (psn) {
        psn->_name = [_name copyWithZone:zone];
        psn->_age = _age;
    }
    return psn;
}


@end
