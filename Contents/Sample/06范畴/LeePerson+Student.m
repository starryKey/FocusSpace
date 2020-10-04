//
//  LeePerson+Student.m
//  06范畴
//
//  Created by Li_JinLin on 2020/9/26.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "LeePerson+Student.h"

@implementation LeePerson (Student)

//属性的 setter 与 getter 方法由用户自己实现，不自动生成
@dynamic name;


- (void)studyEnglish{
    NSLog(@"study english");
}
- (void)setName:(NSString *)name{
    name = name;
}
- (void)testPrivate{
    NSLog(@"--testPri");
}
@end
