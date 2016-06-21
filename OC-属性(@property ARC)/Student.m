//
//  Student.m
//  OC-属性(@property ARC)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)dealloc
{
    NSLog(@"Student:%@被释放了...",_stuID);
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d,%@,%@,%g分！",[self name],self.age,self.sex,_stuID,_corse];//此时的.表示getter方法
}
-(instancetype)init
{
    if (self=[super init])
    {
        _corse=58;
    }
    return self;
}
@end
