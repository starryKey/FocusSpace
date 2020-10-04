//
//  Person.h
//  07抽象类和类簇
//
//  Created by Li_JinLin on 2020/10/4.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;


- (nonnull id)copyWithZone:(nullable NSZone *)zone;

@end

NS_ASSUME_NONNULL_END
