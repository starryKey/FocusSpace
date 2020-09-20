//
//  AClass.m
//  02动态绑定
//
//  Created by Li_JinLin on 2020/9/14.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "AClass.h"

@implementation AClass

static NSString * name;

-(void)whoAreYou{
    NSLog(@"---I am A");
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"调用者--->%@", [self class]);
    }
    return self;
}

+(void)initialize{
    NSLog(@"I am A");
    static BOOL nomore = NO;
    if (nomore) {
        return;
    }
    NSLog(@"--->🍎--调用者-->%@",[self class]);
    nomore = YES;
}

@end
