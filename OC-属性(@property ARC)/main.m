//
//  main.m
//  OC-属性(@property ARC)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[[Person alloc] init];
        [p1 setName:@"小红"];
        [p1 setAge:21];
        [p1 setSex:@"女"];
        
        //复合
        Dog *d1=[[Dog alloc] init];
        [d1 setDormin:p1];
        [d1 setDogName:@"小黄"];
        Dog *d2=[[Dog alloc] init];
        [d2 setDogName:@"小辉"];
        [d2 setDormin:p1];//两种方式功能相同,但是对象的释放顺序不同
//        [p1 setDog:d2];
        
        //循环引用-->造成两个对象都无法释放，必须把其中一个引用改为 弱引用!!
        [p1 setDog:d1];
        
        //继承
        Student *s1=[[Student alloc] init];
        [s1 setStuID:@"12324"];
        [s1 setName:@"小明"];
        s1.age=21;//此时的.语法是setter方法
        [s1 setSex:@"男"];
        NSLog(@"s1=%@",s1);
        
        //修饰词
//        [s1 setCorse:23];//corse为只读属性，没有setter方法,只能重写init
        [s1 setAddress:@"郑州"];
        NSLog(@"age  %@,%@,%d,%d",s1.address,[s1 getA],s1.age,[s1 age]);
    }
    return 0;
}
