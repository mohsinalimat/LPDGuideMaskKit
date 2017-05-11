//
//  LPDGuideMaskCanvas.h
//  Pods
//
//  Created by ZhengYidong on 11/05/2017.
//
//

#import <Foundation/Foundation.h>
#import "LPDGuideMaskItem.h"

typedef void(^LPDGuideMaskCanvasCompletion)(NSUInteger index);

@interface LPDGuideMaskCanvas : NSObject

@property(nonatomic, strong, readonly) UIView *canvas;

- (instancetype) initWithItems:(NSMutableArray<id<LPDGuideMaskItemProtocol>> *)items index:(NSUInteger)index;

@property (nonatomic, strong) LPDGuideMaskCanvasCompletion clicked;

@end
