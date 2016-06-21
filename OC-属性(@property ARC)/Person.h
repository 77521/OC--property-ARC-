//
//  Person.h
//  OC-属性(@property ARC)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
//ARC中属性默认是 strong !
//不论是ARC还是MRC，readwrite都是默认的，可读可写,可以省略 自动生成setter和getter
//readonly 仅仅只有getter 方法
@interface Person : NSObject
@property(nonatomic,strong,readwrite)NSString *name;
@property(nonatomic)int age;
@property(nonatomic)NSString *sex;
@property(nonatomic,assign)Dog *dog;
@property(nonatomic,getter=getA)NSString *address;//更改自动生成的方法名，尽量不要这样写！
@end
