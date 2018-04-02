//
//  ReactExternalModuleBridge.m
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 4/1/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(BasicBridgingExample, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name
                  location:(NSString *)location
                  numberOfSecondsSince1970:(nonnull NSNumber *)numberOfSecondsSince1970
                  details:(NSDictionary *)details
                  callback:(RCTResponseSenderBlock)callback);

@end
