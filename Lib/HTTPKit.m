//
//  HTTPKit.m
//  上班第一天 对AFN进行封装
//
//  Created by 沙罗双树 on 2016/10/24.
//  Copyright © 2016年 沙罗双树. All rights reserved.
//

#import "HTTPKit.h"
#import "AFNetworking.h"

@implementation HTTPKit

+ (void)StartNetStatusListenning {
    /// 这是AFN的一个附加功能 并不是她主要的功能
    AFNetworkReachabilityManager* statusManager =  [AFNetworkReachabilityManager sharedManager];
    [statusManager startMonitoring];
    [statusManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusReachableViaWiFi:{
                NSLog(@"WiFi网络");
                break;
            }
            case AFNetworkReachabilityStatusReachableViaWWAN:{
                NSLog(@"有线网络");
                break;
            }
            case AFNetworkReachabilityStatusUnknown:{
                NSLog(@"未知网络");
                break;
            }
            default:{
                NSLog(@"您来自火星人");
                break;
            }
        }
    }];
}

+ (AFHTTPSessionManager*) SharedManager {
    /// 首先开辟一个HTTP请求体总管类
    static dispatch_once_t onceToken;
    static AFHTTPSessionManager* manager;
    
    /// git ... M ---> Modity A ---> Added D --- Delete
    dispatch_once(&onceToken, ^{
        manager =  [AFHTTPSessionManager manager];
        /// 修改总管类下面的 序列化方式 有2个体 1.请求体 2.响应体
        AFHTTPResponseSerializer* serialzier = [AFHTTPResponseSerializer serializer];
        /// 响应体修改 accepptableXXX...指针 他只认 NSSet集合类。因为非Mutable的数据结构不可以添加元素 所以 申请一个 mutableSet 再转为不可变的 NSSet ---> 序列化器 ---> HTTP总管
        NSMutableSet* mSet = [[NSMutableSet alloc]init];
        [mSet addObject:@"application/json"];
        [mSet addObject:@"text/plain"];
        [mSet addObject:@"text/html"];
        serialzier.acceptableContentTypes = mSet;
        manager.responseSerializer = serialzier;
    });
    return manager;
}

+ (void)HTTPGET:(NSString *)urlPath
              param:(NSDictionary *)parameter
            success:(successfullBlock)blockSuccess
          failBlock:(failBlock)blockFail {
    [[HTTPKit SharedManager] GET:urlPath parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if(blockSuccess != nil){
            blockSuccess(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if(blockFail){
            blockFail(error);
        }
    }];
}

+ (void)HTTPPOST:(NSString *)urlPath
              param:(NSDictionary *)parameter
            success:(successfullBlock)blockSuccess
          failBlock:(failBlock)blockFail {
    [[HTTPKit SharedManager] POST:urlPath parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if(blockSuccess != nil) {
            blockSuccess(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if(blockFail){
            blockFail(error);
        }
    }];
}
@end
