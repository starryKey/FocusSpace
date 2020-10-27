//
//  main.m
//  内存管理
//
//  Created by Li_JinLin on 2020/10/14.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        NSNumber *num1 = [NSNumber numberWithInt:1];
        NSLog(@"%@--地址：%p", num1, num1);
        NSLog(@"%lu", sizeof(num1));
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

//int main(int argc, char * argv[]) {
//    NSObject *obj = [[NSObject alloc] init];
//    NSLog(@"%@", obj);
//    return 0;
//}
