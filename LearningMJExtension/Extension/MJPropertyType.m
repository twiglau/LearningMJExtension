//
//  MJPropertyType.m
//  LearningMJExtension
//
//  Created by ltchina on 16/1/11.
//  Copyright (c) 2016年 ltchina. All rights reserved.
//我们拿到这些数据类型的初衷,是为了是用字典中的值的类型与模型中属性的类型进行对比,想要对比,需要拿到属性的类型,因此需要将这些编码转换成一个表示类型的类,创建一个类用来包装类型.
//
//

#import "MJPropertyType.h"

@implementation MJPropertyType
+(instancetype)propertyTypeWithAttributeString:(NSString *)string{
    return [[MJPropertyType alloc] initWithTypeString:string];
}
-(instancetype)initWithTypeString:(NSString *)string{
    if (self = [super init]) {
        NSUInteger loc =1;
        NSUInteger len = [string rangeOfString:@","].location - loc;
        NSString *type = [string substringWithRange:NSMakeRange(loc, len)];
        NSLog(@"%@",type);
    }
    return self;
}
@end
