//
//  UIFont+swizzle.m
//  MoboNews
//
//  Created by eric on 2018/5/15.
//  Copyright © 2018年 mobo. All rights reserved.
//

#import "UIFont+swizzle.h"

@implementation UIFont (swizzle)

+ (void)load {

    [self exchangeTwoMethod:@selector(adjustFont:) WithMethod:@selector(systemFontOfSize:)];

    [self exchangeTwoMethod:@selector(adjustBoldFont:) WithMethod:@selector(boldSystemFontOfSize:)];


}

+ (void)exchangeTwoMethod:(SEL)firstMethod WithMethod:(SEL)secondMethod {

    //获取替换后的类方法
    Method newMethod = class_getClassMethod([self class], firstMethod);
    //获取替换前的类方法
    Method method = class_getClassMethod([self class], secondMethod);
    //然后交换类方法
    method_exchangeImplementations(method, newMethod);
}

//正常
+ (UIFont *)adjustFont:(CGFloat)fontSize {

    return [UIFont fontWithName:@"Droid Sans Arabic" size:fontSize - 2];
}

//加粗
+ (UIFont *)adjustBoldFont:(CGFloat)fontSize {

    return [UIFont adjustFont:fontSize + 2];
}


@end
