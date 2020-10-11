//
//  ViewController.m
//  09并行编程
//
//  Created by Li_JinLin on 2020/10/7.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property(nonatomic, assign) NSUInteger nCount;
@property(nonatomic, strong) NSLock * lock1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _lock1 = [[NSLock alloc] init];

    // 测试：
    [NSThread detachNewThreadSelector:@selector(testThread1) toTarget:self withObject:nil];
    NSThread *thread = [[NSThread alloc] init];
    thread.name = @"test";
//    [thread performSelector:@selector(testThread2) withObject:nil];
    [thread start];
    [NSThread detachNewThreadSelector:@selector(testThread1) toTarget:self withObject:nil];
    // 死锁实例
//    NSLog(@"执行任务1");
//    dispatch_queue_t queue = dispatch_get_main_queue();
//    dispatch_sync(queue, ^{
//        NSLog(@"执行任务2");
//    });
//    NSLog(@"执行任务3");
    
    // 递归锁
//    NSRecursiveLock * lock = [[NSRecursiveLock alloc] init];
    
    Person * person = [[Person alloc] init];
    [person setValue:@"Jack" forKey:@"name"];
    
    id value = [person valueForKey:@"name"];
    NSLog(@"%@", value);
    
}

- (void)testThread1{
    NSLog(@"%@", [NSThread currentThread]);
    [self.lock1 lock];
    self.nCount += 1;
    [self.lock1 unlock];
    NSLog(@"%lu", self.nCount);
}

// lock和unlock必须在同一个线程执行。
- (void)testThread2{
    NSLog(@"%@", [NSThread currentThread]);
}



@end
