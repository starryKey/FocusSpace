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

- (void)testIsa{
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    for (int i = 0; i < 1000; i++) {
        dispatch_async(queue, ^{
            self.name = [NSString stringWithFormat:@"abcdefghijklmnopqretuvwxyz"];
        });
    }
//    dispatch_queue_t queue2 = dispatch_get_global_queue(0, 0);
//    for (int i = 0; i < 1000; i++) {
//        dispatch_async(queue2, ^{
//            self.name = [NSString stringWithFormat:@"abcdefghi"];
//        });
//    }
}

@end


