//
//  Dog.h
//  OC-属性(@property ARC)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
@class Person;//循环引用，最好一处用@class
@interface Dog : NSObject
@property(nonatomic)Person *dormin;
@property(nonatomic,copy)NSString *dogName;
@end
