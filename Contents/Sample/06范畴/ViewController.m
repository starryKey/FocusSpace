//
//  ViewController.m
//  06范畴
//
//  Created by Li_JinLin on 2020/9/26.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "LeePerson.h"
#import "LeePerson+Student.h"
#import "LeePerson+Teacher.h"
#import <objc/runtime.h>

static char testKey;

@interface ViewController ()

@end

@implementation ViewController

//@synthesize age;

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    LeePerson * p1 = [[LeePerson alloc] init];
    [p1 eat];
    [p1 watchTV];
    [p1 studyEnglish];
    [p1 testPrivate];
    [p1 teach:@"English"];
    p1.name = @"Jack";
    p1.nickName = @"John";
    
    
    // 关联引用
    objc_setAssociatedObject(p1, &testKey, @"testAssociate", OBJC_ASSOCIATION_COPY);
    
    id value = objc_getAssociatedObject(p1, &testKey);
    NSLog(@"AssociatedObject:🍎-->%@", value);
}


@end
