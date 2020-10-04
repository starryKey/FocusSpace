//
//  LeePerson.h
//  06范畴
//
//  Created by Li_JinLin on 2020/9/26.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeePerson : NSObject

@property(nonatomic, copy)NSString * duty;
@property(nonatomic, assign)NSUInteger testAge;

- (void)eat;
- (void)playWith:(NSString *)name;
- (void)watchTV;


@end

NS_ASSUME_NONNULL_END
