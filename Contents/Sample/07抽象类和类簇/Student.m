//
//  Student.m
//  07抽象类和类簇
//
//  Created by Li_JinLin on 2020/10/4.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)encodeWithCoder:(NSCoder *)coder{
    [super encodeWithCoder:coder];
    [coder encodeObject:@"name" forKey:@"testName"];
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSString * name = [coder decodeObjectForKey:@"testName"];
        NSLog(@"-->%@", name);
    }
    return self;
}


@end
