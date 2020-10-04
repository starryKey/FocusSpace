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
    // MRC
    Person * p1 = [[Person alloc] init];   //引用计数为1
    Person * p2 = nil;
    p2 = p1;      //直接赋值并不能使引用计数+1
    [p2 retain];  //只有给对象发送retain时，引用计数才会+1
    NSLog(@"retainCount: %lu",[p1 retainCount]); //引用计数为2
    [p1 release];     //引用计数为1
    [p2 playSoccer];  //对象未被释放，程序正常运行
    
    id pool = [[NSAutoreleasePool alloc] init];
    Person * pA = [[Person alloc] init];
    [pA autorelease];   // 将对象放入自动释放池pool中
    Person * pB = pA;
    [pB retain];        // 如果没有该步骤，引用计数为1
    NSLog(@"pool release前：retainCount: %lu",[pA retainCount]); //pA引用计数为2
    [pool release]; //销毁自动释放池，自动释放池中所有的对象也被销毁。此时pA引用计数减1
    NSLog(@"pool release后：retainCount: %lu",[pA retainCount]); //pA引用计数为1
    
    NSMutableArray * testArr = [NSMutableArray arrayWithObjects:pA, pA, pA,nil];
    NSLog(@"%@--> retainCount: %lu", testArr, [pA retainCount]);
    [testArr addObject:pA];
    NSLog(@"%@--> retainCount: %lu", testArr, [pA retainCount]);
    
    
    __weak NSObject * obj;
}
- (IBAction)testAction:(UIButton *)sender {
    
}

@end
