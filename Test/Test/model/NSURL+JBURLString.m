//
//  NSURL+JBURLString.m
//  jubao-agent
//
//  Created by 王同钢 on 2018/3/9.
//  Copyright © 2018年 jubao. All rights reserved.
//

#import "NSURL+JBURLString.h"
#import<objc/runtime.h>
@implementation NSURL (JBURLString)

+(instancetype)URLWithJBString:(NSString *)URLString{
    NSString *url=URLString;
    if ([self isHaveChina:url]) {
        url=[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    }


     return [self URLWithJBString:url];
}


+(BOOL)isHaveChina:(NSString*)string{
    for(int i=0; i< [string length];i++){
        int a = [string characterAtIndex:i];
        if( a > 0x4e00 && a < 0x9fff){
            NSLog(@"汉字");
            return YES;
        }
    }
    return NO;
}

+ (void)load
{
    // 运行时交换两个方法的实现
    Method m1 = class_getClassMethod([NSURL class], @selector(URLWithString:));
    Method m2 = class_getClassMethod([NSURL class], @selector(URLWithJBString:));
    method_exchangeImplementations(m1, m2);
    
}
@end
