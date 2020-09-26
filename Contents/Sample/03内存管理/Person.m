//
//  Person.m
//  03内存管理
//
//  Created by Li_JinLin on 2020/9/19.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Person.h"



@implementation Person

@synthesize name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)dealloc{
    [super dealloc];
    
}

- (void)playSoccer{
    
}

- (void)setName:(NSString *)newName{
    [newName retain];   //可省略
    [name release];     //可省略
    name = newName;
}



@end
