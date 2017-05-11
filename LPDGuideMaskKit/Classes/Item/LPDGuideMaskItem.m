//
//  LPDGuideMaskItem.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskItem.h"
#import <LPDGuideMaskRender.h>

@interface LPDGuideMaskItem()

@property (nonatomic, assign) CGPoint center;
@property (nonatomic, assign) CGSize size;

@end

@implementation LPDGuideMaskItem

- (instancetype) initWithCenter:(CGPoint) center size:(CGSize) size {
  if (self = [super init]) {
    _center = center;
    _size = size;
  }
  
  return self;
}

- (instancetype) instance {
  return nil;
}

- (Class) render {
  return [LPDGuideMaskRender class];
}

@end
