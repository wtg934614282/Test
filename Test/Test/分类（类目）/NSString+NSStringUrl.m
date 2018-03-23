//
//  NSString+NSStringUrl.m
//  Test
//
//  Created by 王同钢 on 2018/3/23.
//  Copyright © 2018年 王同钢. All rights reserved.
//

#import "NSString+NSStringUrl.h"

@implementation NSString (NSStringUrl)
+(NSString *)returenImageUrlString:(NSString*)baseString{
    
    if ([NSString isHaveChina:baseString]) {
        baseString=[baseString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        return baseString;
    }
    return baseString;
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
@end
