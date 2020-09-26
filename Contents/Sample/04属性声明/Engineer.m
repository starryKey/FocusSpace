//
//  Engineer.m
//  04属性声明
//
//  Created by Li_JinLin on 2020/9/23.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Engineer.h"

@implementation Engineer

- (void)playWith:(NSString *)name{
    NSLog(@"%@--->", name);
}
+ (void)testAction:(NSString *)value{
    NSLog(@"🍎-->%@",value);
}

- (void)testInsMethod:(id)value{
    NSLog(@"🍊");
}
@end
