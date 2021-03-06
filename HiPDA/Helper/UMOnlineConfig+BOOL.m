//
//  UMOnlineConfig+BOOL.m
//  HiPDA
//
//  Created by Jichao Wu on 15/12/7.
//  Copyright © 2015年 wujichao. All rights reserved.
//

#import "UMOnlineConfig+BOOL.h"

#define VERSION ([[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"])

@implementation UMOnlineConfig (BOOL)

+ (BOOL)getBoolConfigWithKey:(NSString *)key defaultYES:(BOOL)defaultYES
{
    key = [NSString stringWithFormat:@"%@-%@", key, VERSION];
    NSString *s = [self.class getConfigParams:key] ?: (defaultYES ? @"1" : @"0");
    return [s integerValue] == 1;
}

@end
