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
#import "TestModel.h"
#import "CollectionModel.h"
#import <objc/runtime.h>

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
    
    NSNumber *num1 = @(2);
    NSNumber *num2 = @(10);
    NSNumber *num3 = @(12);
    NSNumber *num4 = @(15);
    NSNumber *num5 = @(0xFFFFFFFFFFFFFFFF);
    
    NSLog(@"num1 = %@ - %p - 0x%lx", num1, &num1, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(num1)));
    NSLog(@"num2 = %@ - %p - 0x%lx", num2, &num2, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(num2)));
    NSLog(@"num3 = %@ - %p - 0x%lx", num3, &num3, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(num3)));
    NSLog(@"num4 = %@ - %p - 0x%lx", num4, &num4, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(num4)));
    NSLog(@"num5 = %@ - %p - 0x%lx", num5, &num5, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(num5)));
    
    NSString * str1 = [NSString stringWithFormat:@"a"];
    NSString * str2 = [NSString stringWithFormat:@"ab"];
    NSString * str3 = [NSString stringWithFormat:@"abc"];
    NSString * str4 = [NSString stringWithFormat:@"abcd"];
    
    NSLog(@"str1 = %@ - %p - 0x%lx",str1, &str1, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(str1)));
    NSLog(@"str1 = %@ - %p - 0x%lx",str2, &str2, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(str2)));
    NSLog(@"str1 = %@ - %p - 0x%lx",str3, &str3, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(str3)));
    NSLog(@"str1 = %@ - %p - 0x%lx",str4, &str4, _objc_decodeTaggedPointer((__bridge const void * _Nullable)(str4)));

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
    NSLog(@"kPublicString = %p", &(UIApplicationDidEnterBackgroundNotification));
    
    */
//    NSString *str = [NSString stringWithFormat:@"sunnyxx"];
//    reference = str;
//
//    id __strong obj = [[NSObject alloc] init];
//    testObj = obj;
//    NSLog(@"01-->%@", testObj);
//    [self test];
    
//    Person *p1 = [[Person alloc] init];
//    p1.name = @"Jack";
//    // 生成并持有对象
//    Person *p2 = (Person *)[p1 copy];
//    p2.name = @"Tom";
//    NSLog(@"p1:%@, 地址：%p", p1, &p1);
//    NSLog(@"p2:%@, 地址：%p", p2, &p2);
    
    Person *p1 = [[Person alloc] init];
    p1.name = @"Jack";
    // 生成并持有对象
    Person *p2 = (Person *)[p1 copy];
    // 生成并持有对象
    Person *p3 = (Person *)[p1 mutableCopy];
    p3.name = @"John";
    NSLog(@"p1:%@, 地址：%p, name:%@", p1, &p1, p1.name);
    NSLog(@"p2:%@, 地址：%p, name:%@", p2, &p2, p2.name);
    NSLog(@"p2:%@, 地址：%p, name:%@", p3, &p3, p3.name);
    
    //ARC下如何访问retainCount属性，这里提供了两种方式（下面代码中a代表一个任意对象，这个对象最好不要是NSString和NSNumber，因为用它们进行测试会出问题）
    // 桥接字方式
    NSLog(@"Retain count: %ld", CFGetRetainCount((__bridge CFTypeRef)p3));
    // KVC方式
    NSLog(@"Retain count: %@", [p3 valueForKey:@"retainCount"]);
    
    
    
//    NSString *testStr = [NSString stringWithFormat:@"1"];
    NSString *testStr = @"a";
    NSLog(@" %s, %p", object_getClassName(testStr), testStr);
    
    //-----测试深拷贝和浅拷贝------
    // 不可变字符串的拷贝
//    [self testStringCopy];
    NSLog(@"=============我是分割线================");
    // 可变字符串的拷贝
//    [self testMutableCopy];
    // 测试对象拷贝
//    [self testCustomObject];
//    [self testCus];
//    [self testCollectionCopy];
    //
//    [self testDeepCopyCollection];
//    [self testObjSize];
    
}

extern uintptr_t objc_debug_taggedpointer_obfuscator;

static inline uintptr_t
_objc_decodeTaggedPointer(const void * _Nullable ptr)
{
    return (uintptr_t)ptr ^ objc_debug_taggedpointer_obfuscator;
}

//static inline enum objc_tag_index_t
//_objc_getTaggedPointerTag(const void * _Nullable ptr);

- (void)test{
    NSLog(@"02-->%@", testObj);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //NSLog(@"%@", reference); // Console: sunnyxx
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    //NSLog(@"%@", reference); // Console: (sunnyxx)
}

#pragma mark - 所有权修饰符
//01 __strong修饰符
- (void)testStrong{
    id __strong obj1 = [[NSObject alloc] init];
}
//02 __weak修饰符
- (void)testWeak{
    id __weak obj2 = [[NSObject alloc] init];
}
// 03 __unsafe_unretained
- (void)testUnsafe{
    //不安全的所有权修饰符，尽管ARC式的内存管理是编译器的工作，但是附有__unsafe_unretained修饰符的变量不属于编译器的内存管理对象。
      id __unsafe_unretained obj3 = [[NSObject alloc] init];
}
// 04 __autoreleasing修饰符
- (void)testAutoreleasing{
    id __autoreleasing obj4 = [[NSObject alloc] init];
}

#pragma mark - 对象的拷贝
// NSString
- (void)testStringCopy{
    NSString *str = @"original value";
    NSString *copyStr = [str copy];
    NSMutableString *mutableCopyStr = [str mutableCopy];
    NSLog(@"地址:%p 值:%@", str, str);
    NSLog(@"地址:%p 值:%@", copyStr, copyStr);
    NSLog(@"地址:%p 值:%@", mutableCopyStr, mutableCopyStr);
}
//NSMutableString
- (void)testMutableCopy{
    NSMutableString *str = [NSMutableString stringWithString:@"original value"];
    NSMutableString *copyStr = [str copy];
    NSMutableString *mutableCopyStr = [str mutableCopy];
    NSLog(@"地址:%p 值:%@", str, str);
    NSLog(@"地址:%p 值:%@", copyStr, copyStr);
    NSLog(@"地址:%p 值:%@", mutableCopyStr, mutableCopyStr);
}

- (void)testCustomObject{
    NSMutableArray *mutableArray = [NSMutableArray array];
    TestModel *model = [[TestModel alloc] initWithTitle:@"title" subTitle:[NSMutableString stringWithString:@"subTitle"] norArray:@[@"test1", @"test2"] mutArrry:mutableArray];
    TestModel *copyModel = [model copy];
    TestModel *mutableModel = [model mutableCopy];
    
    NSLog(@"******TestModel内存地址******");
    NSLog(@"原始地址：%p", model);
    NSLog(@"copy地址：%p", copyModel);
    NSLog(@"mutableCopy地址：%p", mutableModel);
    
    NSLog(@"******  属性title(NSString)内存地址  ******");
    NSLog(@"原始地址：%p", model.title);
    NSLog(@"copy地址：%p", copyModel.title);
    NSLog(@"mutableCopy地址：%p", mutableModel.title);
    
    NSLog(@"****** 属性subTitle(NSMutableString)内存地址 ******");
    NSLog(@"原始地址：%p", model.subTitle);
    NSLog(@"copy地址：%p", copyModel.subTitle);
    NSLog(@"mutableCopy地址：%p", mutableModel.subTitle);
    
    NSLog(@"****** 属性norArray(NSArray)内存地址 ******");
    NSLog(@"原始地址：%p", model.norArray);
    NSLog(@"copy地址：%p", copyModel.norArray);
    NSLog(@"mutableCopy地址：%p", mutableModel.norArray);
    
    NSLog(@"****** 属性mutArrry(NSMutableArray)内存地址 ******");
    NSLog(@"原始地址：%p", model.mutArray);
    NSLog(@"copy地址：%p", copyModel.mutArray);
    NSLog(@"mutableCopy地址：%p", mutableModel.mutArray);
}

- (void)testCus{
    
    NSMutableArray *mutArr = [[NSMutableArray alloc] init];
    [mutArr addObject:@"str0"];
    CollectionModel *model = [[CollectionModel alloc] initWithMutArr:mutArr name:@"Jack" nickname: [NSMutableString stringWithString:@"JackJone"]];
    CollectionModel *copyModel = [model copy];
    CollectionModel *mutCopyModel = [model mutableCopy];
    
    [model.mutableArray addObject:@"str1"];
    [copyModel.mutableArray addObject:@"str2"];
    [mutCopyModel.mutableArray addObject:@"str3"];
    
    NSLog(@"=========我是分割线========>");
    NSLog(@"原始地址：%p", model);
    NSLog(@"Copy地址：%p", copyModel);
    NSLog(@"mutableCopy地址：%p", mutCopyModel);
    
    NSLog(@"========mutArr=========>");
    NSLog(@"原始地址：%p", model.mutableArray);
    NSLog(@"Copy地址：%p", copyModel.mutableArray);
    NSLog(@"mutableCopy地址：%p", mutCopyModel.mutableArray);
    
    NSLog(@"========mutArr=========>");
    NSLog(@"原始地址：%@", model.mutableArray);
    NSLog(@"Copy地址：%@", copyModel.mutableArray);
    NSLog(@"mutableCopy地址：%@", mutCopyModel.mutableArray);
    
    model.name = @"TestName";
    NSLog(@"=========name========>");
    NSLog(@"原始地址：%@", model.name);
    NSLog(@"Copy地址：%@", copyModel.name);
    NSLog(@"mutableCopy地址：%@", mutCopyModel.name);
    
    model.nickname = [NSMutableString stringWithString:@"TestNickname"];
    NSLog(@"=========nickname========>");
    NSLog(@"原始地址：%@", model.nickname);
    NSLog(@"Copy地址：%@", copyModel.nickname);
    NSLog(@"mutableCopy地址：%@", mutCopyModel.nickname);
}

// 集合的拷贝
- (void)testCollectionCopy{
    /*
    NSArray *oriArr = [NSArray arrayWithObjects:@"test", nil];
    //01、浅拷贝
    NSArray *copyArr = [oriArr copy];
    NSLog(@"%p", oriArr);
    NSLog(@"%p", copyArr);
    
    //02、单层深拷贝
    NSMutableArray *mutArr = [oriArr mutableCopy];
    NSLog(@"%p", oriArr);
    NSLog(@"%p", mutArr);
    //内部元素
    NSLog(@"%p", oriArr[0]);
    NSLog(@"%p", mutArr[0]);
     
    */
    
    // 03、双层深拷贝：
    
    NSMutableString *mutString1 = [NSMutableString stringWithString:@"test1"];
    NSMutableString *mutString2 = [NSMutableString stringWithString:@"test1"];
    NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:mutString2, nil];
    NSArray *testArr = [NSArray arrayWithObjects:mutString1, mutableArr, nil];
    //通过官方文档提供的方式进行创建copy
    NSArray *testArrCopy = [[NSArray alloc] initWithArray:testArr copyItems:YES];
    //testArr和testArrCopy进行对比
    NSLog(@"===我是分割线01===");
    NSLog(@"%p", testArr);
    NSLog(@"%p", testArrCopy);
    
    //testArr和testArrCopy中元素指针对比
    //mutableString对比
    NSLog(@"===我是分割线02===");
    NSLog(@"%p", testArr[0]);
    NSLog(@"%p", testArrCopy[0]);
    
    //mutableArr对比
    NSLog(@"===我是分割线03===");
    NSLog(@"%p", testArr[1]);
    NSLog(@"%p", testArrCopy[1]);
    
    //mutableArr中元素对比，即mutalbeString2进行对比
    NSLog(@"===我是分割线04===");
    NSLog(@"%p", testArr[1][0]);
    NSLog(@"%p", testArrCopy[1][0]);
}
// 测试集合深拷贝
- (void)testDeepCopyCollection{
    NSMutableString *mutString1 = [NSMutableString stringWithString:@"test1"];
    NSMutableString *mutString2 = [NSMutableString stringWithString:@"test1"];
    NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:mutString2, nil];
    NSArray *testArr = [NSArray arrayWithObjects:mutString1, mutableArr, nil];
    //通过归档、解档的方式创建copy
    NSArray *testArrCopy = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:testArr]];
    //testArr和testArrCopy进行对比
    NSLog(@"===我是分割线01===");
    NSLog(@"%p", testArr);
    NSLog(@"%p", testArrCopy);
   
    //testArr和testArrCopy中元素指针对比
    //mutableString对比
    NSLog(@"===我是分割线02===");
    NSLog(@"%p", testArr[0]);
    NSLog(@"%p", testArrCopy[0]);
   
    //mutableArr对比
    NSLog(@"===我是分割线03===");
    NSLog(@"%p", testArr[1]);
    NSLog(@"%p", testArrCopy[1]);
   
    //mutableArr中元素对比，即mutalbeString2进行对比
    NSLog(@"===我是分割线04===");
    NSLog(@"%p", testArr[1][0]);
    NSLog(@"%p", testArrCopy[1][0]);
}

- (void)testObjSize{
    NSNumber *num1 = @1;
    NSLog(@"%@--地址：%p", num1, num1);
    NSLog(@"%lu", sizeof(num1));
}

@end
