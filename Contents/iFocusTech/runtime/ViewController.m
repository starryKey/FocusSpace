//
//  ViewController.m
//  runtime
//
//  Created by Li_JinLin on 2020/10/20.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //01对象的底层
    Person *person = [Person alloc];
    //消息发送：objc_msgSend(id 消息接收者， SEL方法编号)
    Person *person2 = [person init];
    Person *person3 = [person init];
    NSLog(@"--%p--%p--%p",person, person2, person3); // ？alloc init 到底做了什么？ api
    NSLog(@"end");
    
//    https://developer.apple.com/documentation/objectivec/objective-c_runtime
//    https://developer.apple.com/videos/play/wwdc2020/10163/
}


@end
