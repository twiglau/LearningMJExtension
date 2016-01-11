//
//  MJPropertyType.h
//  LearningMJExtension
//
//  Created by ltchina on 16/1/11.
//  Copyright (c) 2016年 ltchina. All rights reserved.
//我们拿到这些数据类型的初衷,是为了是用字典中的值的类型与模型中属性的类型进行对比,想要对比,需要拿到属性的类型,因此需要将这些编码转换成一个表示类型的类,创建一个类用来包装类型.
//
//

#import <Foundation/Foundation.h>
/*
 *包装一种类型
 */
@interface MJPropertyType : NSObject
/*是否为id类型**/
@property (nonatomic,readonly,getter=isIdType) BOOL idType;
/**是否为基本数字类型：int\float等*/
@property (nonatomic,readonly,getter=isNumberType) BOOL numberType;
/**是否为BOOL类型*/
@property (nonatomic,readonly,getter=isBoolType) BOOL boolType;

/**对象类型（如果是基本数据类型，此值为nil）*/
@property (nonatomic,readonly) Class typeClass;

+(instancetype)propertyTypeWithAttributeString:(NSString *)string;
@end
