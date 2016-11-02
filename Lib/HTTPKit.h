//
//  HTTPKit.h
//  上班第一天 对AFN进行封装
//
//  Created by 沙罗双树 on 2016/10/24.
//  Copyright © 2016年 沙罗双树. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  成功回调
 */
typedef void(^successfullBlock)(id responseObject);
/**
 * 失败回调
 */
typedef void(^failBlock)(NSError* error);

@interface HTTPKit : NSObject

/** 在二次封装AFN的时候 增加了一个附加功能 在控制台监听网络状态的变更 */
+ (void)StartNetStatusListenning ;

+(void) HTTPGET:(NSString*)urlPath
              param:(NSDictionary*)parameter
            success:(successfullBlock)blockSuccess
          failBlock:(failBlock)blockFail;

+ (void)HTTPPOST:(NSString *)urlPath
           param:(NSDictionary *)parameter
         success:(successfullBlock)blockSuccess
       failBlock:(failBlock)blockFail;
@end
