//
//  LPDGuideMaskEngine.h
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import <Foundation/Foundation.h>
#import "LPDGuideMaskItem.h"

@interface LPDGuideMaskEngine : NSObject

- (instancetype) initWithItems:(NSMutableArray<NSMutableArray<id<LPDGuideMaskItemProtocol>> *> *)items;

@end
