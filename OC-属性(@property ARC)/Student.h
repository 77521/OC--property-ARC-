//
//  Student.h
//  OC-属性(@property ARC)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person
@property(nonatomic)NSString *stuID;
@property(nonatomic,readonly)double corse;
@end
