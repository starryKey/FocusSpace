//
//  ViewController.m
//  内存管理
//
//  Created by Li_JinLin on 2020/10/14.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "PublicHeader.h"

@interface ViewController ()

@end

@implementation ViewController

/*
// 未初始化
int m;
static int n;
static NSString *str1;
// 已初始化
int p = 1;
static int q = 2;
static NSString *str2 = @"test";
 
 */

__weak id reference = nil;

id __unsafe_unretained testObj = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*
    // 栈区示例
    int a = 0;
    NSUInteger b = 1;
    NSNumber * c = @3;
    NSObject * obj = [[NSObject alloc] init];
    NSLog(@"a的地址:%p", &a);
    NSLog(@"b的地址:%p", &b);
    NSLog(@"c的地址:%p", &c);
    NSLog(@"obj的地址:%p", &obj);
    NSLog(@"a占用的内存：%lu",sizeof(a));
    NSLog(@"c占用的内存：%lu",sizeof(c));
    NSLog(@"obj占用的内存：%lu",sizeof(&obj));
    
    // 堆区示例
    NSObject *obj1 = [NSObject new];
    NSObject *obj2 = [[NSObject alloc] init];
    Person *person1 = [[Person alloc] init];
    Person *person2 = [person1 copyWithZone: NULL];
    NSLog(@"obj1 = %@", obj1);
    NSLog(@"obj2 = %@", obj2);
    NSLog(@"person1 = %@", person1);
    NSLog(@"person2 = %@", person2);
    
    // 静态区/全局区
    NSLog(@"m = %p", &m);
    NSLog(@"n = %p", &n);
    NSLog(@"str1 = %p", &str1);
    NSLog(@"p = %p", &p);
    NSLog(@"q = %p", &q);
    NSLog(@"str2 = %p", &str2);
//    NSLog(@"kPublicString = %p", &(UIApplicationDidEnterBackgroundNotification));
    
    */
    
    NSString *str = [NSString stringWithFormat:@"sunnyxx"];
    reference = str;
    
    id __strong obj = [[NSObject alloc] init];
    testObj = obj;
    NSLog(@"01-->%@", testObj);
    [self test];
}
- (void)test{
    NSLog(@"02-->%@", testObj);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%@", reference); // Console: sunnyxx
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%@", reference); // Console: (sunnyxx)
}

- (void)testStrong{

    // 所有权
    // 01 __strong修饰符
    id __strong obj1 = [[NSObject alloc] init];
    
    // 02 __weak修饰符
    id __weak obj2 = [[NSObject alloc] init];
    
    // 03 __unsafe_unretained,不安全的所有权修饰符，尽管ARC式的内存管理是编译器的工作，但是附有__unsafe_unretained修饰符的变量不属于编译器的内存管理对象。
    id __unsafe_unretained obj3 = [[NSObject alloc] init];
    
    
}

@end
