//
//  MJProperty.m
//  LearningMJExtension
//
//  Created by ltchina on 16/1/11.
//  Copyright (c) 2016年 ltchina. All rights reserved.
//把这些名字和类型遍历出来,肯定是为了以后有用,所以需要把它们存起来,由于它们是一个"整体",所以还是设计一个类将他们包装起来比较好.创建一个包装成员属性的类
//
//

#import "MJProperty.h"
@implementation MJProperty
+(instancetype)propertyWithProperty:(objc_property_t)property{
    return [[MJProperty alloc] initWithProperty:property];
}
-(instancetype)initWithProperty:(objc_property_t)property{
    if (self = [super init]) {
        _name = @(property_getName(property));
        _type = [MJPropertyType propertyTypeWithAttributeString:@(property_getAttributes(property))];
    }
    return self;
}
@end
