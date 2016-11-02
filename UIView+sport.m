//
//  UIView+sport.m
//  导航栏的变化
//
//  Created by macbook on 2016/10/26.
//  Copyright © 2016年 daquan xu. All rights reserved.
//

#import "UIView+sport.h"
#import <objc/runtime.h>

@implementation UIView (sport)
@dynamic str;
static void * MyObjectMyCustomPorpertyKey = (void *)@"MyObjectMyCustomPorpertyKey";

- (NSString*)str{
    return objc_getAssociatedObject(self, MyObjectMyCustomPorpertyKey);
}

- (void)setStr:(NSString *)str
{
    objc_setAssociatedObject(self, MyObjectMyCustomPorpertyKey, str, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)eat{
    NSLog(@"jack-----------eating");
}
@end
