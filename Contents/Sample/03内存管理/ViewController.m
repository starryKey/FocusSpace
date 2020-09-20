//
//  ViewController.m
//  03内存管理
//
//  Created by Li_JinLin on 2020/9/19.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property(nonatomic, strong) Person *jack;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 01、测试引用计数
    Person * person = [[Person alloc] init];
    [person retain];
    NSLog(@"retainCount: %lu",[person retainCount]);
    [person release];
    NSLog(@"retainCount: %lu",[person retainCount]);
    [person release];
    //person对象的引用计数为0，此时对象被释放，不能再使用，否则会造成崩溃
//    NSLog(@"retainCount: %lu",[person retainCount]);
//    [person playSoccer];
    [self testAction];
//    _jack = [[Person alloc] init];
//    NSLog(@"%@--->retainCount:%lu", _jack, [_jack retainCount]);
    //02、
}

- (void)testAction{
    Person * p = [[Person alloc] init];
    NSLog(@"retainCount: %lu",[p retainCount]);
    [p release];
}

@end
