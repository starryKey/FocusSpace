//
//  LeePerson+Teacher.h
//  06范畴
//
//  Created by Li_JinLin on 2020/9/26.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "LeePerson.h"

NS_ASSUME_NONNULL_BEGIN

// 拓展

@interface LeePerson (){
    BOOL flag;
    NSString * extName;
}

// 需要在主类中实现setNickName方法
@property (nonatomic, copy) NSString *nickName;
// 需要在主类中实现该方法
- (void)teach:(NSString *)subject;

@end

NS_ASSUME_NONNULL_END
