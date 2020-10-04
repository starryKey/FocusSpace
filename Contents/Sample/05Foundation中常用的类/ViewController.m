//
//  ViewController.m
//  05Foundation中常用的类
//
//  Created by Li_JinLin on 2020/9/26.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

// 排序
NSInteger myCompare(id arg1, id arg2, void * context){
    int value1 = [arg1 intValue];
    int value2 = [arg2 intValue];
    if (value1 < value2) {
        return NSOrderedAscending;
    } else if (value1 > value2){
        return NSOrderedDescending;
    } else {
        return NSOrderedSame;
    }
};

struct grid {
    int x,y;
    double weight
};

struct grid testFoo, bar;
id testObj;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*01--------->NSString*/
    NSString * pathStr = @"/home/you/tem";
    NSString * work = [@"user/wol/test.doc" lastPathComponent];
    work = [work stringByDeletingPathExtension];
    work = [work stringByAppendingPathExtension:@"pdf"];
    pathStr = [pathStr stringByAppendingPathComponent:work];
 
    NSString * str1 = @"test1";
    NSString * str2 = @"test2";
    NSComparisonResult result = [str1 compare:str2];
    NSLog(@"%ld", (long)result);
    
    NSError * error = nil;
    NSString * str3 = [[NSString alloc] initWithContentsOfFile:@"/home/you/tem" encoding:NSUTF8StringEncoding error: &error];
    NSLog(@"--->%@", str3);
    
    NSMutableString * muStr = [[NSMutableString alloc] initWithString:@"Hello"];
    [muStr appendString:@" world"];
    NSLog(@"%@", muStr);
    [muStr appendFormat:@"%@", [NSString stringWithFormat:@", have a %@", @"try"]];
    
    [muStr insertString:@"😄" atIndex:10];
    [muStr deleteCharactersInRange:NSMakeRange(0, 5)];
//    [muStr setString:@"try"]; 复制muStr中指定的字符串try，并将其设置为消息的接收者。
    [muStr replaceCharactersInRange:NSMakeRange(2, 3) withString:@"🍎"];
    
    /*02--------->NSData---*/
    // 字符串转Data
    NSString * test = @"hello world";
    NSData * data1 = [test dataUsingEncoding: kCFStringEncodingUTF8];
    // Data转字符串
    // 方法1
    NSString * testStr = [NSString stringWithCString:data1.bytes encoding:NSUTF8StringEncoding];
    // 方法2
    NSString * testStr2 = [[NSString alloc] initWithData:data1 encoding:kCFStringEncodingUTF8];
    NSLog(@"Data:%@--String:%@--String:%@", data1, testStr, testStr2);
//    NSData * data2 = [[NSData alloc] initWithContentsOfFile:@""];
    
     /*03--------->NSArray---*/
    NSArray * arr1 = [NSArray array];
    NSArray * arr2 = [NSArray arrayWithObject:@"test"];
    NSArray * arr3 = [NSArray arrayWithObjects:@"test2", @"test1", nil];
    
    NSUInteger count = [arr3 count];
//    NSUInteger index = [arr3 indexOfObject:@"test3"];
    NSArray *arr4 = [arr3 arrayByAddingObject:@"test3"];
    // 数组的排序方式1
    NSArray * newArray = [arr4 sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@", newArray);
    // 排序方式2
    [newArray sortedArrayUsingFunction:myCompare context:nil];
    // 给数组中的对象发消息
    //[newArray makeObjectsPerformSelector:@selector(testAction)];
//    SEL sel = NSSelectorFromString(@"testAct");
//    [newArray makeObjectsPerformSelector:@selector(test) withObject:@"testObj"];
//
    // 文件输入与输出
    // 01 从属性列表文件读取内容来初始化一个NSArray。
//    NSArray * testArr1 = [[NSArray alloc] initWithContentsOfFile:@"filePath"];
    // 02 将数组中的内容以属性列表的格式写入filePath指定的文件中。flag为YES时，执行安全写入。
//    [testArr1 writeToFile:@"filePath" atomically:YES];
    
    // NSMutableArray
    
    NSMutableArray * musArr1 = [[NSMutableArray alloc] initWithObjects:@"test1", @"test2", @"test3", @"test4", @"test5", nil];
    // 增加
    [musArr1 addObject:@"test6"];
    NSLog(@"MuaArr:-->%@", musArr1);
    [musArr1 insertObject:@"test0" atIndex:0];
    NSLog(@"MuaArr:-->%@", musArr1);
    // 修改
    [musArr1 replaceObjectAtIndex:2 withObject:@"T3"];
    NSLog(@"MuaArr:-->%@", musArr1);
    // 删除
    [musArr1 removeObject:@"test6"];
    NSLog(@"MuaArr:-->%@", musArr1);
    [musArr1 removeLastObject];
    NSLog(@"MuaArr:-->%@", musArr1);
    [musArr1 removeObjectAtIndex:0];
    NSLog(@"MuaArr:-->%@", musArr1);
    
    // 排序
    [musArr1 sortUsingSelector:@selector(compare:)];
    [musArr1 sortUsingFunction:myCompare context:nil];
    // 数组中存储不同类型的实例
    NSMutableArray * musArr2 = [NSMutableArray arrayWithObjects:@"1", [[NSObject alloc] init], nil];
    NSLog(@"-->%@", musArr2);
    
    NSArray * musArr3 = [[NSArray alloc] initWithObjects:@"1", @1, [[NSObject alloc] init], nil];
    NSLog(@"%@", musArr3);
    
    // 枚举
    NSMutableArray * dataArr = [NSMutableArray arrayWithObjects:@"test1", @"test2", @"test3", @"test4", nil];
    // 快速枚举
    for (NSString * item in dataArr) {
        NSLog(@"%@", item);
    }
    // 枚举器
    NSEnumerator *enumerator;
    enumerator = [dataArr objectEnumerator];
    id obj = nil;
    while ((obj = [enumerator nextObject]) != nil) {
        // ToDo
    }
    
    // 集合类
    NSSet * set1 = [NSSet setWithArray:dataArr];
    NSLog(@"%@", set1);
    
    // 字典类
    // 初始化方法
    // 01
    NSDictionary * dic = [[NSDictionary alloc] init];
    // 02
    NSDictionary * dic2 = [NSDictionary dictionary];
    // 03
    NSDictionary * dic3 = [[NSDictionary alloc] initWithDictionary:dic];
    // 04
    NSDictionary * dic4 = [NSDictionary dictionaryWithObject:@"value" forKey:@"key"];
    // 05
    NSDictionary * dic5 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"key", @"value", nil];
    // ....
    id value = [dic4 objectForKey:@"key"];
    
    //NSMutableDictionary
    NSMutableDictionary * dic6 = [[NSMutableDictionary alloc] initWithCapacity:10];
    [dic6 setObject:@"obj1" forKey:@"key1"];
    
    // NSNumber
    NSNumber * num1 = [[NSNumber alloc] initWithInt:1];
    NSNumber * num2 = [[NSNumber alloc] initWithDouble:1.1];
    
    //NSValue
    
    NSValue *value1 = [[NSValue alloc] init];
    
    NSRange range1 = NSMakeRange(1, 3);
    // 封装
    NSValue * value0 = [NSValue valueWithRange:range1];
    NSValue * value2 = [NSValue valueWithCGRect:CGRectMake(0, 0, 100, 200)];
    NSValue * value3 = [NSValue valueWithCGPoint:CGPointMake(10, 10)];
    
    // 解封装
    NSRange range0 = [value0 rangeValue];
    CGPoint point = [value3 CGPointValue];
    CGRect rect = [value2 CGRectValue];
    
    // 类型编码和@encode()
    
    char * strA = @encode(NSString);
    NSLog(@"-->%s", strA);
    
    char * strB = @encode(float);
    NSLog(@"-->%s", strB);
    
    testObj = [[NSValue alloc] initWithBytes:&testFoo objCType: @encode(struct grid)];
    [testObj getValue:&bar];
}

- (void)testAction{
    NSLog(@"---");
}

@end
