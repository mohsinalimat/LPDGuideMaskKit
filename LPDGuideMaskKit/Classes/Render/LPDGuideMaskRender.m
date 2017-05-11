//
//  LPDGuideMaskRender.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskRender.h"

@implementation LPDGuideMaskRender

-(instancetype) initWithCanvas:(UIView *)canvas item:(id<LPDGuideMaskItemProtocol>) item {
  if (self = [super init]) {
    _canvas = canvas;
    _item = item;
  }
  
  return self;
}

-(void) render {
  
}

@end
