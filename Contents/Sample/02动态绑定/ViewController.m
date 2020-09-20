//
//  ViewController.m
//  02动态绑定
//
//  Created by Li_JinLin on 2020/9/14.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "AClass.h"
#import "BClass.h"
#import "CClass.h"
#import "DClass.h"

// 动态绑定：动态绑定指的是在程序执行时才确定对象的属性和需要响应的消息。
// 多态：是指同一操作作用于不同的类的实例时，将产生不同的执行结果。即不同的对象收到相同的消息时，也能得到不同的结果。多态大大增加了软件的灵活性和拓展性。


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSInteger n = 0;
//    id obj;
//    switch (n) {
//        case 0:
//            obj = [[AClass alloc] init];
//            break;
//        case 1:
//            obj = [[BClass alloc] init];
//            break;
//        case 2:
//            obj = [[NSObject alloc] init];
//        default:
//            break;
//    }
//    [obj whoAreYou];
//    AClass *clsA = nil;
//    clsA = [[BClass alloc] init];
//    [clsA whoAreYou];
//    
//    AClass *a, *b;
//    id c;
//    a = [[AClass alloc] init];
//    b = [[BClass alloc] init];
//    c = [[AClass alloc] init];
//    
//    [a whoAreYou];
//    [b whoAreYou];
//    [c whoAreYou];
    
    id testB = [[BClass alloc] init];
    [testB sayHello];
//    [testB playBasketball];
    [BClass setMessage:@"Have a good day"];
    [testB sayHello];
    
    [BClass setMessage:@"hhh"];
    [testB sayHello];
    
    [DClass testClassMethod];
    
//    BOOL isTrue = false;
//    Class theClass = isTrue ? [AClass class] : [BClass class];
//
//    BClass * clsB = nil;
//    [clsB sayHello];
//    NSString * testStr = nil;
//    [testB testMethod:testStr];
}




@end
