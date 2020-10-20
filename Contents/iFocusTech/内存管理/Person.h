//
//  Person.h
//  内存管理
//
//  Created by Li_JinLin on 2020/10/17.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (nonnull id)copyWithZone:(nullable NSZone *)zone;

@end

NS_ASSUME_NONNULL_END
