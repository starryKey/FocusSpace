//
//  CPerson.m
//  01继承
//
//  Created by Li_JinLin on 2020/9/9.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "CPerson.h"

@implementation CPerson

-(void)play{
    NSLog(@"%@---%s", [CPerson class],__FUNCTION__);
}
-(void)method2{
    NSLog(@"---%s",__FUNCTION__);
}

@end
