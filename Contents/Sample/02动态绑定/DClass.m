//
//  DClass.m
//  02动态绑定
//
//  Created by Li_JinLin on 2020/9/19.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "DClass.h"

@implementation DClass

+ (void)initialize
{
    if (self == [DClass class]) {
        
    }
}

+ (void)testClassMethod{
    NSLog(@"--->");
}

@end
