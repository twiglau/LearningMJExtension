//
//  ViewController.m
//  LearningMJExtension
//
//  Created by ltchina on 16/1/11.
//  Copyright (c) 2016年 ltchina. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "NSObject+Property.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dict = @{
                           @"name":@"Jack",
                           @"icon":@"lucy.png",
                           @"age":@"20",
                           @"height":@"1.55",
                           @"money":@"100.9",
                           @"sex":@(SexFemale),
                           @"gay":@"1"
                           };
    NSArray *propertyArray = [User properties];
    NSLog(@"%@",[propertyArray description]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
