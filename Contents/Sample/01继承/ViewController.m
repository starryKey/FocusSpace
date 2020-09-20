//
//  ViewController.m
//  01继承
//
//  Created by Li_JinLin on 2020/9/9.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "APerson.h"
#import "BPerson.h"
#import "CPerson.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    APerson * ap = [[APerson alloc] init];
    [ap play];
    [ap method1];
    [ap method2];
    [ap method3];
    NSLog(@"-------->01");
    
    BPerson * bp = [[BPerson alloc] init];
    [bp method1];
    [bp method2];
    [bp method3];
    NSLog(@"-------->02");
    
    CPerson * cp = [[CPerson alloc] init];
    [cp method1];
    [cp method2];
    [cp method3];
}


@end
