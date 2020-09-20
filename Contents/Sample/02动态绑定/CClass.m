//
//  CClass.m
//  02动态绑定
//
//  Created by Li_JinLin on 2020/9/15.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "CClass.h"

@interface CClass ()
//{
//    @protected
//    id delegate;
//    @public
//    NSString *name;
//    @private
//    int age;
//}
@end

@implementation CClass{
    @protected
    id delegate;
    @public
    NSString *name;
    @private
    int age;
    
}

- (void)printName{
    NSLog(@"I am C");
    name = @"hh";
}
/*
 类方法以`+`开头，继承的情况下，子类可以访问父类的类方法。
    ⚠️但是需注意以下几点：
    - 1、类方法中不能访问类中定义的实例变量和实例方法。
    - 2、类方法在执行时使用self代表了类对象自身，因此可以通过self发送消息的方式来调用其他的类方法。
 */
+ (void)testClassMethod{
    
}
@end
