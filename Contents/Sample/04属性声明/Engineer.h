//
//  Engineer.h
//  04属性声明
//
//  Created by Li_JinLin on 2020/9/23.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Engineer : Person

@property(nonatomic, copy)NSString * name;
//- (void)playWith:(NSString *)name;
+ (void)testAction:(id)value;
- (void)testInsMethod:(id)value;
@end

NS_ASSUME_NONNULL_END
