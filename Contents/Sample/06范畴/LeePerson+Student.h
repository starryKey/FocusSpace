//
//  LeePerson+Student.h
//  06范畴
//
//  Created by Li_JinLin on 2020/9/26.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "LeePerson.h"

NS_ASSUME_NONNULL_BEGIN

// 分类
//category分类中不能声明成员变量
static char sKey;

@interface LeePerson (Student)

@property (nonatomic, copy) NSString *name;

- (void)studyEnglish;
- (void)testPrivate;

@end

NS_ASSUME_NONNULL_END
