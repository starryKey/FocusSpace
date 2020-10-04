//
//  LeePerson.m
//  06范畴
//
//  Created by Li_JinLin on 2020/9/26.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "LeePerson.h"

@interface LeePerson(){
    
    int sex;
}

@end

@implementation LeePerson

// 合成
@synthesize testAge = age;

- (void)eat{
    NSLog(@"%@-->Eat",[self class]);
}
- (void)playWith:(NSString *)name{
    NSLog(@"play with %@", name);
}
- (void)watchTV{
    [self testPrivate];
    NSLog(@"%@", [self class]);
}

- (void)testPrivate{
    NSLog(@"testPrivate-->");
}

- (void)setTestAge:(NSUInteger)testAge{
    age = testAge;
}
- (void)teach:(NSString *)subject{
    NSLog(@"tech %@", subject);
}

- (void)setNickName:(NSString *)nickName{
    NSLog(@"--%@", nickName);
}

@end
