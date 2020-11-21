//
//  main.m
//  iFocusTech
//
//  Created by iFocus on 2020/10/14.
//  Copyright © 2020 iFocus. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        id __strong obj0 = [NSMutableArray array];
//        NSLog(@"Retain count: %@", [obj valueForKey:@"retainCount"]);
        
//        id __weak obj1 = obj0;
//        NSLog(@"class = %@", [obj1 class]);
        
        id __weak obj1 = obj0;
        id __autoreleasing tmp = obj1;
        NSLog(@"class = %@", [tmp class]);
        
        [NSString stringWithContentsOfFile:@"" encoding:NSUTF8StringEncoding error:nil];
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
//    return 0;
}




//Person *person = [[Person alloc] init];
//NSLog(@"%@", person);
//    NSString * appDelegateClassName;
//    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
