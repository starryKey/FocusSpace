//
//  CollectionModel.m
//  内存管理
//
//  Created by Li_JinLin on 2020/10/24.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "CollectionModel.h"

@interface CollectionModel()<NSCopying, NSMutableCopying>

@end

@implementation CollectionModel

- (instancetype)initWithMutArr:(NSMutableArray *)mutArray name:(NSString *)name nickname:(NSMutableString *)nickname{
    self = [super init];
    if (self) {
        self.name = name;
        self.nickname = nickname;
        self.mutableArray = mutArray;
    }
    return self;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    CollectionModel *model = [[[self class] allocWithZone:zone] initWithMutArr:_mutableArray name:_name nickname:_nickname];
//    model.mutableArray = self.mutableArray;
//    model.name = self.name;
//    model.nickname = self.nickname;
    return model;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    CollectionModel *model = [[[self class] allocWithZone:zone] initWithMutArr:_mutableArray name:_name nickname:_nickname];
//    model.mutableArray = self.mutableArray;
//    model.name = self.name;
//    model.nickname = self.nickname;
    return model;
}

@end
