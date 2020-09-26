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

}

@end
