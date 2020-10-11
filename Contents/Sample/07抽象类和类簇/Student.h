//
//  Student.h
//  07抽象类和类簇
//
//  Created by Li_JinLin on 2020/10/4.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person<NSCopying, NSCoding>

@end

NS_ASSUME_NONNULL_END
