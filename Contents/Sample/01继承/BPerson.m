//
//  BPerson.m
//  01继承
//
//  Created by Li_JinLin on 2020/9/9.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "BPerson.h"

@implementation BPerson

-(void)play{
    NSLog(@"%@---%s", [BPerson class],__FUNCTION__);
}

-(void)method1{
   NSLog(@"---%s",__FUNCTION__);
}

-(void)method3{
    NSLog(@"---%s",__FUNCTION__);
    
    [self method1];
    [self method2];
    NSLog(@"---");
    [super method1];
}


@end
