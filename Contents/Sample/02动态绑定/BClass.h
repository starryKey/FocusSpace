//
//  BClass.h
//  02动态绑定
//
//  Created by Li_JinLin on 2020/9/14.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "AClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface BClass : AClass

-(void)whoAreYou;

-(void)sayHello;
- (void)testMethod:(NSString *)test;

//+ (void)initialize;
+ (void)setMessage:(NSString *)msg;

+ (void)playBasketball;

@end

NS_ASSUME_NONNULL_END
