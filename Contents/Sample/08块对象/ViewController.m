//
//  ViewController.m
//  08块对象
//
//  Created by Li_JinLin on 2020/10/4.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"

typedef void(^TestBlock)(int a, int b);



@interface ViewController ()

@property(nonatomic, copy)TestBlock testBlock;

@end
//块对象的定义
//01、块句法
//^(参数列) { 主体 }

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testBlock = ^(int a, int b) {
        NSInteger c = a + b;
        NSLog(@"%lu",c);
    };
    self.testBlock(2, 3);
    
    // 消息转发
//    Person * person = [[Person alloc] init];
//    [person playBasketball];
    
    Student * student = [[Student alloc] init];
//    [student playBasketball];
    NSInvocation * invo = [[NSInvocation alloc] init];
    invo.selector = @selector(playBasketball);
    [student forwardInvocation:invo];
    NSMutableArray * muArr = [[NSMutableArray alloc] init];
    @try {
        id obj = [muArr objectAtIndex:0];
//        [muArr addObject: nil];
    } @catch (NSException *exception) {
        NSString * name = [exception name];
        NSString * reason = [exception reason];
        NSLog(@"name: %@ reason: %@", name, reason);
//        [exception raise];
    } @catch (NSException *exception) {
        NSLog(@"Exc01-->");
    } @catch (NSException *exception) {
        NSLog(@"Exc02-->");
    } @catch (...) {
        NSLog(@"Exc03-->");
    }
}


@end
