//
//  Student.m
//  08块对象
//
//  Created by Li_JinLin on 2020/10/7.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    NSLog(@"%@", anInvocation);
    SEL sel = [anInvocation selector];
    if ([self respondsToSelector:sel]) {
        [anInvocation invokeWithTarget:self];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

@end
