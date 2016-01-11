//
//  MJProperty.h
//  LearningMJExtension
//
//  Created by ltchina on 16/1/11.
//  Copyright (c) 2016年 ltchina. All rights reserved.
//把这些名字和类型遍历出来,肯定是为了以后有用,所以需要把它们存起来,由于它们是一个"整体",所以还是设计一个类将他们包装起来比较好.创建一个包装成员属性的类
//
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "MJPropertyType.h"
@interface MJProperty : NSObject
/**成员属性的名字*/
@property (nonatomic,readonly) NSString *name;
/**成员属性的类型*/
@property (nonatomic,readonly) MJPropertyType *type;
+(instancetype)propertyWithProperty:(objc_property_t)property;
@end
