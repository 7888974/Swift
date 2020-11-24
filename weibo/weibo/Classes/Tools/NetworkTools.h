//
//  NetworkTools.h
//  weibo
//
//  Created by ShiroJoy on 2020/11/24.
//  Copyright © 2020 yhw. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkTools : AFHTTPSessionManager

+(instancetype)sharedTools;

-(void)request:(NSString *)urlString
    parameters:(NSDictionary *)parameters;

@end

NS_ASSUME_NONNULL_END
