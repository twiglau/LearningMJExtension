//
//  User.h
//  LearningMJExtension
//
//  Created by ltchina on 16/1/11.
//  Copyright (c) 2016年 ltchina. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum{
    SexMale,
    SexFemale
}Sex;
@interface User : NSObject
/**名称*/
@property (nonatomic,copy) NSString *name;
/**头像*/
@property (nonatomic,copy) NSString *icon;
/**年龄*/
@property (nonatomic,assign) unsigned int age;
/**身高*/
@property (nonatomic,copy) NSString *height;
/**财富*/
@property (nonatomic,strong) NSNumber *money;
/**性别*/
@property (nonatomic,assign) Sex sex;
/**同性恋*/
@property (nonatomic,assign,getter=isGay) BOOL gay;

@end
