//
//  TestModel.h
//  内存管理
//
//  Created by Li_JinLin on 2020/10/24.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSMutableString *subTitle;
@property (nonatomic, strong) NSArray *norArray;
@property (nonatomic, strong) NSMutableArray *mutArray;

- (instancetype)initWithTitle:(NSString *)title subTitle:(NSMutableString *)subTitle norArray:(NSArray *)array mutArrry:(NSMutableArray *)mutArray;

@end

NS_ASSUME_NONNULL_END
