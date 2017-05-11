//
//  LPDGuideMaskRender.h
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import <Foundation/Foundation.h>
#import "LPDGuideMaskItem.h"

@protocol LPDGuideMaskRenderProtocol <NSObject>

-(void) render;

@end

@interface LPDGuideMaskRender : NSObject <LPDGuideMaskRenderProtocol>

@property (nonatomic, weak, readonly) UIView *canvas;
@property (nonatomic, weak, readonly) id<LPDGuideMaskItemProtocol> item;

-(instancetype) initWithCanvas:(UIView *)canvas item:(id<LPDGuideMaskItemProtocol>) item;

@end
