//
//  TestModel.m
//  内存管理
//
//  Created by Li_JinLin on 2020/10/24.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "TestModel.h"
#import <objc/runtime.h>

@interface TestModel()<NSCopying, NSMutableCopying>

@end

@implementation TestModel

- (instancetype)initWithTitle:(NSString *)title subTitle:(NSMutableString *)subTitle norArray:(NSArray *)array mutArrry:(NSMutableArray *)mutArray{
    if (self = [super init]) {
        _title = title;
        _subTitle = subTitle;
        _norArray = array;
        _mutArray = mutArray;
    }
    return self;
}
- (id)copyWithZone:(nullable NSZone *)zone{
    TestModel *model = [[[self class] allocWithZone:zone] init];
    model.title = [self.title copyWithZone:zone];       //同[self.title copy];
    model.subTitle = [self.subTitle copyWithZone:zone]; //同[self.subTitle copy];
    model.norArray = [self.norArray copyWithZone:zone]; //同[self.norArray copy];
    model.mutArray = [self.mutArray copyWithZone:zone]; //同[self.mutArray copy];
    return model;
}

- (id)mutableCopyWithZone:(NSZone *)zone{
    TestModel *model = [[[self class] allocWithZone:zone] init];
    model.title = [self.title mutableCopyWithZone:zone];        // 同[self.title mutableCopy];
    model.subTitle = [self.subTitle mutableCopyWithZone:zone];  // 同[self.subTitle  mutableCopy];
    model.norArray = [self.norArray mutableCopyWithZone:zone];  // 同[self.norArray mutableCopy];
    model.mutArray = [self.mutArray mutableCopyWithZone:zone];  // 同[self.mutArray mutableCopy];
    return model;
}
/*
- (id)copyWithZone:(NSZone * )zone{
    id copyObject = [[[self class] allocWithZone:zone] init];
    // 01:获取属性列表
    unsigned int propertyCount = 0;
    objc_property_t *propertyArray = class_copyPropertyList([self class], &propertyCount);
    for (int i = 0; i< propertyCount; i++) {
        objc_property_t  property = propertyArray[i];
        // 2.属性名字
        const char * propertyName = property_getName(property);
        NSString * key = [NSString stringWithUTF8String:propertyName];
        // 3.通过属性名拿到属性值
        id value=[self valueForKey:key];
        NSLog(@"name:%s,value:%@",propertyName,value);
        // 4.判断值对象是否响应copyWithZone
        if ([value respondsToSelector:@selector(copyWithZone:)]) {
            //5.设置属性值
            [copyObject setValue:[value copy] forKey:key];
        }else{
            [copyObject setValue:value forKey:key];
        }
    }
    //mark:需要手动释放
    free(propertyArray);
    return copyObject;
}
*/

/*
- (id)mutableCopyWithZone:(NSZone *)zone{
    id mutableCopyObj = [[[self class]allocWithZone:zone] init];
    //1.获取属性列表
    unsigned int count = 0;
    objc_property_t* propertylist = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count ; i++) {
        objc_property_t property = propertylist[i];
        //2.获取属性名
        const char * propertyName = property_getName(property);
        NSString * key = [NSString stringWithUTF8String:propertyName];
        //3.获取属性值
        id value = [self valueForKey:key];
        //4.判断属性值对象是否遵守NSMutableCopying协议
        if ([value respondsToSelector:@selector(mutableCopyWithZone:)]) {
            //5.设置对象属性值
            [mutableCopyObj setValue:[value mutableCopy] forKey:key];
        }else{
            [mutableCopyObj setValue:value forKey:key];
        }
    }
    //mark:需要手动释放
    free(propertylist);
    return mutableCopyObj;
}
*/
@end
