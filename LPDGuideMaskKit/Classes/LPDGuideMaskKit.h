//
//  LPDGuideMaskKit.h
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import <Foundation/Foundation.h>
#import "LPDGuideMaskEngine.h"

@interface LPDGuideMaskKit : NSObject

+ (instancetype)shared;

- (void) setItems:(NSMutableArray<NSMutableArray<id<LPDGuideMaskItemProtocol>> *> *)items withKey:(NSString *)key;

@end
