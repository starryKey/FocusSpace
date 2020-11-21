//
//  ViewController.m
//  iFocusTech
//
//  Created by iFocus on 2020/10/14.
//  Copyright © 2020 iFocus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSError *error = nil;
    BOOL result = [self performOperationWithError:&error];
    NSLog(@"Error:%@, result:%d", error, result);
}

- (BOOL)performOperationWithError:(NSError * __autoreleasing *)error{
    //出错了
    *error = [NSError errorWithDomain:@"error test" code:1 userInfo:nil];
    return NO;
}

@end
