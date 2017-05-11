//
//  LPDGuideMaskTipsItem.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskTipsItem.h"
#import "LPDGuideMaskTipsRender.h"

@interface LPDGuideMaskTipsItem()

@property (nonatomic, strong) UIImage *image;

@end

@implementation LPDGuideMaskTipsItem

- (instancetype) initWithImage:(UIImage *)image center:(CGPoint) center size:(CGSize) size {
  if (self = [super initWithCenter:center size:size]) {
    _image = image;
  }
  return self;
}

- (UIImage *) instance {
  return _image;
}

- (Class) render {
  return [LPDGuideMaskTipsRender class];
}

@end
