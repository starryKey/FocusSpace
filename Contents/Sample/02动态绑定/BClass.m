//
//  BClass.m
//  02动态绑定
//
//  Created by Li_JinLin on 2020/9/14.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "BClass.h"

static const NSString *myMessage = @"Hello";

@implementation BClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"调用者--->%@", [self class]);
    }
    return self;
}

-(void)whoAreYou{
    NSLog(@"---I am B");
}

-(void)sayHello{
//    NSLog(@"---B say hello");
    NSLog(@"%@", myMessage);
}

//+ (void)initialize{
//    NSLog(@"I am B");
//    NSLog(@"--->🍎--调用者-->%@",[self class]);
//}
+ (void)playBasketball{
    NSLog(@"playBasketball-->");
}

+ (void)setMessage:(NSString *)msg{
    myMessage = msg;
}

- (void)testMethod:(NSString *)test{
    NSLog(@"%@", test);
}

@end
