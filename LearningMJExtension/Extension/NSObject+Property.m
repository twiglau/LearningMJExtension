//
//  NSObject+Property.m
//  LearningMJExtension
//
//  Created by ltchina on 16/1/11.
//  Copyright (c) 2016年 ltchina. All rights reserved.
//  1.遍历模型中的 属性，然后拿到 属性名 作为 键值 去字典中寻找 值。
//  2.找到 值 后根据模型的 属性 的 类型 将 值 转成正确的 类型。
//  3.赋值
//

/*
 1.拿到模型的属性名(注意属性名和成员变量名的区别),和对应的数据类型.
 
 2.用该属性名作为键去字典中寻找对应的值.
 
 3.拿到值后将值转换为属性对应的数据类型.
 
 4.赋值.
 */
#import "NSObject+Property.h"
#import "MJProperty.h"
#import <objc/runtime.h>
typedef struct property_t{
    const char *name;
    const char *attributes;
}*propertyStruct;
@implementation NSObject (Property)
+(NSArray *)properties{
    NSArray *propertiesArray = [NSMutableArray array];
    //1.获得所有的属性
    unsigned int outCount = 0;
    objc_property_t *properties = class_copyPropertyList(self, &outCount)
    ;
   
    for (int i = 0; i<outCount; i++) {
        objc_property_t property = properties[i];
        NSLog(@"name:%s---atrributes:%s",((propertyStruct)property)->name,((propertyStruct)property)->attributes);
//        //为了以后方便，将Cp字符串转换成OC对象
//        NSString *name = @(property_getName(property));
//        NSString *attributes = @(property_getAttributes(property));
//        
//        //在attributes中,只需要知道它所属的类或者是什么基本数据类型,即T至第一个逗号之前中间的内容,如果是类的话还需要将@"和"去掉.
//        NSUInteger loc =1;
//        NSUInteger len = [attributes rangeOfString:@","].location -loc;
//        NSString *type = [attributes substringWithRange:NSMakeRange(loc, len)];
//        NSLog(@"%@",type);
        MJProperty *propertyObj = [MJProperty propertyWithProperty:property];
        
    }
    return propertiesArray;
}

@end
