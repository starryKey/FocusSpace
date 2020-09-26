//
//  Fraction.h
//  03内存管理
//
//  Created by Li_JinLin on 2020/9/20.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
{
    int sgn; //符号位
    int num; //分子
    int den; //分母
}

//+ (id)fractionWithNumerator:(int)n denominator:(int)d;
//- (id)initWithNumerator:(int)n denominator:(int)d;
//- (Fraction *)add:(Fraction *)obj;
//- (Fraction *)sub:(Fraction *)obj;
//- (Fraction *)mul:(Fraction *)obj;
//- (Fraction *)div:(Fraction *)obj;
//- (NSString *)description;

@end

NS_ASSUME_NONNULL_END
