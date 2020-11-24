//
//  NetworkTools.m
//  weibo
//
//  Created by ShiroJoy on 2020/11/24.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "NetworkTools.h"

@implementation NetworkTools

+ (instancetype)sharedTools{
    static NetworkTools *tools;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *url = [NSURL URLWithString:@"http://123.206.30.72:8001"];
        tools = [[self alloc] initWithBaseURL:url]; //基于主地址初始化
    });
    return tools;
}

-(void)request:(NSString *)urlString
    parameters:(NSDictionary *)parameters
      finished:(void(^)(id res, NSError * error))finished{
    
    //http://123.206.30.72:8001/swagger-ui.html#!/第三方校验接口/phoneCodeUsingPOST
    
    
    [self POST:urlString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}

@end
