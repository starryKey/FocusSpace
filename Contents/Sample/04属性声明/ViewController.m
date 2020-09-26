//
//  ViewController.m
//  04属性声明
//
//  Created by Li_JinLin on 2020/9/22.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Engineer.h"
#import "Teacher.h"
#import "SeniorEngineer.h"

@interface ViewController ()
{
    SEL action;
    id target;
}
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    Class cls = [NSObject class];
    NSLog(@"--->%@", cls);

    // - (BOOL)isKindOfClass:(Class)aClass; 用于判断消息接收者是否是参数aClass类或者其子类的实例。这个函数和isMemberOfClass的区别在于当消息的接收者时aClass的子类的实例时也会返回YES。
    // - (BOOL)isMemberOfClass:(Class)aClass; 用于判断消息接收者是不是参数aClass类的对象。
    Engineer * eng = [[Engineer alloc] init];
    BOOL isMem = [eng isMemberOfClass:[Engineer class]];
    BOOL isKind = [eng isKindOfClass: [Person class]];
    BOOL isSubKind = [eng isKindOfClass:[Engineer class]];
    NSLog(@"isMemberOfClass: %u 父类 isKindOfClass: %u isSubKind: %u", isMem, isKind, isSubKind);
    //对象的比较
//    - (BOOL)isEqual:(id)object;
    Engineer * eng2 = [[Engineer alloc] init];
    Engineer * eng3 = eng2;
    [eng2 description];
    NSLog(@"%@", [eng2 description]);
    if ([eng3 isEqual:eng2]) {
        NSLog(@"equal");
    }
    if ([eng2 hash] == [eng3 hash]) {
        NSLog(@"hash equal");
    }
    [eng2 performSelector:@selector(playWith:) withObject:@"Jack"];
    BOOL result = [eng2 respondsToSelector:@selector(playWith:)];
    NSLog(@"%u",result);
    
    IMP imp1 = [eng2 methodForSelector:@selector(playWith:)];
    NSLog(@"%p", imp1);
     
    [Engineer methodForSelector:@selector(playWith:)];
    IMP imp2 = [Engineer instanceMethodForSelector:@selector(playWith:)];
    NSLog(@"%p", imp2);
    
    //类对象
    BOOL res = [[Engineer class] respondsToSelector:@selector(testAction:)];
    NSLog(@"--->%u", res);
    if (res) {
        [[Engineer class] performSelector:@selector(testAction:) withObject:@"test"];
    }
    BOOL res2 = [[Engineer class] respondsToSelector:@selector(testInsMethod:)];
    if (res2) {
        [[Engineer class] performSelector:@selector(testInsMethod:) withObject:@"hello"];
    }
    
    
}


- (void)playWith:(id)value{
}

//- (void)setAction:(SEL)selector{
//    action = selector;
//}
//- (void)setTarget:(id)obj{
//    target = obj;
//}
//- (void)performClick:(id)sender{
//    [target performSelector:action withObject: sender];
//}


@end

