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
        NSNumber *num4 = @(999999999);
        
        
//        NSNumber *num1 = @1;
//        NSNumber *num2 = @(999999999);
//        NSString *str1 = @"1";
//        NSString *str2 = @"abcdefghijklmnopqrst";
//        NSIndexPath *indexPath = [[NSIndexPath alloc] initWithIndex:0];
//        NSDate *date = [[NSDate alloc] init];
//
//        NSLog(@"num1(%@<%p>: %p): %@", [num1 class], &num1, num1, num1);
//        NSLog(@"num2(%@<%p>: %p): %@", [num2 class], &num2, num2, num2);
//        NSLog(@"str1(%@<%p>: %p): %@", [str1 class], &str1, str1, str1);
//        NSLog(@"num1(%@<%p>: %p): %@", [str2 class], &str2, str2, str2);
//        NSLog(@"indexPath(%@<%p>: %p): %@", [indexPath class], &indexPath, indexPath, indexPath);
//        NSLog(@"date(%@<%p>: %p): %@", [date class], &date, date, date);
        
        
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
