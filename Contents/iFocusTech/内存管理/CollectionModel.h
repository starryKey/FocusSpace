//
//  CollectionModel.h
//  内存管理
//
//  Created by Li_JinLin on 2020/10/24.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionModel : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSMutableString *nickname;

@property (nonatomic, strong) NSMutableArray *mutableArray;

- (instancetype)initWithMutArr:(NSMutableArray *)mutArray name:(NSString *)name nickname:(NSMutableString *)nickname;

@end

NS_ASSUME_NONNULL_END
