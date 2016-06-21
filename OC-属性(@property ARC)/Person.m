//
//  Person.m
//  OC-属性(@property ARC)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
//内存语义：
////strong、retain
//-(void)setName:(NSString *)name
//{
//    if (_name!=name)
//    {
//        [_name release];
//        _name=[name retain];
//    }
//}
////weak,assign
//-(void)setAge:(int)age
//{
//    _age=age;
//}
////copy
//-(void)setSex:(NSString *)sex
//{
//    if (_sex!=sex)
//    {
//        [_sex release];
//        _sex=[sex copy];
//    }
//}
-(void)dealloc
{
    NSLog(@"person:%@被释放了...",_name);
}
//懒加载
//-(int)age
//{
//    
//}
-(NSString *)getA//本来名字 address
{
    return _address;
}
@end
