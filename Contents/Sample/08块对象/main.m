//
//  main.m
//  08块对象
//
//  Created by Li_JinLin on 2020/10/4.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

// 块对象中的变量行为
void myFunc(int m, void (^b)(void)){
    NSLog(@"%d", m);    //只打印数字
    b();                //运行块
};
int global = 1000;      //外部变量


//块对象的实例和声明周期

void pr(int (^block)(void)){    //参数为块对象
    printf("%d\n", block());    //执行块对象打印后结果
}

int (^g)(void) = ^ {
    return 100;
};

void func1(int n){
    int (^b1)(void) = ^ {
        return n;
    };
    pr(b1);
    g = b1;
}

void func2(int n) {
    int a = 10;
    int (^b2)(void) = ^{
        return n * a;
    };
    pr(b2);
}


int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
//        void (^block)(void);
//        static int s = 20;     //局部静态变量
//        int a = 20;            //自动变量
//        block = ^ {
//            printf("%d, %d, %d \n", global, s, a);
//        };
//        myFunc(1, block); //1000, 20, 20
//
//        s = 0;
//        a = 0;
//        global = 5000;
//        myFunc(2, block); //5000, 0, 20
//
//        block = ^ {
//            printf("%d, %d, %d \n", global, s, a);
//        };
//        myFunc(3, block); //5000, 0, 0
        
        pr(g);
        func1(5);
        func2(5);
        pr(g);
        
        
        
        
        
        
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
