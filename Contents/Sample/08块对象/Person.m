//
//  Person.m
//  08块对象
//
//  Created by Li_JinLin on 2020/10/7.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    NSLog(@"%@--->%@", [self class],anInvocation);
}

@end
