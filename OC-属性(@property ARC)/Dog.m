//
//  Dog.m
//  OC-属性(@property ARC)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)dealloc
{
    NSLog(@"dog%@被释放了...",_dogName);
}
@end
