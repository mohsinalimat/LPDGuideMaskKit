//
//  LPDGuideMaskItem.h
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import <Foundation/Foundation.h>

@protocol LPDGuideMaskItemProtocol <NSObject>

@required

- (id) instance;
- (CGPoint) center;
- (CGSize) size;

- (Class) render;

@end

@interface LPDGuideMaskItem : NSObject <LPDGuideMaskItemProtocol>

- (instancetype) initWithCenter:(CGPoint) center size:(CGSize) size;

@end
