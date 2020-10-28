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
        
        NSNumber *num1 = @1;
        NSNumber *num2 = @2;
        NSNumber *num3 = @3;
        NSNumber *num4 = @(3.1415927);
        NSNumber *num5 = [num1 copy];
        NSNumber *num6 = [num4 copy];
        
        NSLog(@"Retain count: %@", [num1 valueForKey:@"retainCount"]);
            
        NSLog(@"num1(%@<%p>: %p): %@ Retain count: %@", [num1 class], &num1, num1, num1, [num1 valueForKey:@"retainCount"]);
        NSLog(@"num2(%@<%p>: %p): %@ Retain count: %@", [num2 class], &num2, num2, num2, [num2 valueForKey:@"retainCount"]);
        NSLog(@"num3(%@<%p>: %p): %@ Retain count: %@", [num3 class], &num3, num3, num3, [num2 valueForKey:@"retainCount"]);
        NSLog(@"num4(%@<%p>: %p): %@ Retain count: %@", [num4 class], &num4, num4, num4, [num2 valueForKey:@"retainCount"]);
        NSLog(@"num5(%@<%p>: %p): %@ Retain count: %@", [num5 class], &num5, num5, num5, [num2 valueForKey:@"retainCount"]);
        NSLog(@"num6(%@<%p>: %p): %@ Retain count: %@", [num6 class], &num6, num6, num6, [num2 valueForKey:@"retainCount"]);
        
//        2020-10-28 22:43:41.761773+0800 内存管理[48948:2551432] 0xf65db336cb5670e4
//        2020-10-28 22:43:41.763142+0800 内存管理[48948:2551432] 0xf65db336cb5670d4
//        2020-10-28 22:43:41.763255+0800 内存管理[48948:2551432] 0xf65db336cb5670e3
//        2020-10-28 22:45:20.336643+0800 内存管理[48948:2551432] 0xf65db336cb5670d3

        /********************* 输出日志 *********************
        number ---- __NSCFNumber, 0xb000000000000002
        number1 --- __NSCFNumber, 0xb000000000000012
        number2 --- __NSCFNumber, 0xb000000000000022
        number3 --- __NSCFNumber, 0x600003b791c0
        NSString -- NSTaggedPointerString, 0xa000000000000611
        indexPath - NSIndexPath, 0xc000000000000016
         */
        
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
