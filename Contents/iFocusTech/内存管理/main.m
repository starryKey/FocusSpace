//
//  main.m
//  内存管理
//
//  Created by Li_JinLin on 2020/10/14.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <malloc/malloc.h>
#import <objc/runtime.h>

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        NSNumber *num1 = @1;
        NSNumber *num2 = @2;
        NSNumber *num3 = @3;
        NSNumber *num4 = @(0xEFFFFFFFFFFFFFFF);

        NSLog(@"%p", num1);
        NSLog(@"%p", num2);
        NSLog(@"%p", num3);
        NSLog(@"%p", num4);
//
//        NSInteger i = 0xFFFFFFFFFFFFFF;
//        NSNumber *number = [NSNumber numberWithInteger:i];
//        NSLog(@"%zd", malloc_size((__bridge const void *)(number))); // 32
//        NSLog(@"%zd", sizeof(number)); // 8
    
        
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
//    return 0;
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

//int main(int argc, char * argv[]) {
//    NSObject *obj = [[NSObject alloc] init];
//    NSLog(@"%@", obj);
//    return 0;
//}
