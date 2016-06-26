//
//  BaseModel.m
//  BatteryRecycling
//
//  Created by 健库 on 16/4/6.
//  Copyright © 2016年 wong. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel
- (instancetype)initWithDic:(NSDictionary*)dic
{
    if (!dic || ![dic isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    
    if (self = [super init]) {
        for (NSString *key in [dic allKeys]) {
            id value = dic[key];
            //1.处理对象类型和数组类型
            if ([value isKindOfClass:[NSArray class]] || [value isKindOfClass:[NSDictionary class]]) {
                [self setValue:value forKeyPath:key];
            }
            //2.处理空类型:防止出现unRecognized selector exception
            else if ([value isKindOfClass:[NSNull class]]) {
                //                [self setValue:nil forKey:key];
            }
            //3.处理其他类型：包括数字，字符串，布尔，全部使用NSString来处理
            else{
                [self setValue:[NSString stringWithFormat:@"%@",value] forKeyPath:key];
            }
            
        }
        
    }
    
    return self;
}


#pragma mark KVC 安全设置
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"%s",__func__);
}
- (void)setNilValueForKey:(NSString *)key
{
    NSLog(@"%s",__func__);
}

@end
