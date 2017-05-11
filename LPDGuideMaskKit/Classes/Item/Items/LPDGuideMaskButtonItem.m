//
//  LPDGuideMaskButtonItem.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskButtonItem.h"
#import "LPDGuideMaskButtonRender.h"

@interface LPDGuideMaskButtonItem()

@property (nonatomic, strong) UIView *view;

@end

@implementation LPDGuideMaskButtonItem

- (instancetype) initWithView:(UIView *)view center:(CGPoint) center size:(CGSize) size {
  if (self = [super initWithCenter:center size:size]) {
    _view = view;
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    [view addGestureRecognizer:tapGesture];
  }
  return self;
}

- (void)tapped:(UITapGestureRecognizer *)gesture {
  if (self.clicked) {
    self.clicked();
  }
}

- (UIView *) instance {
  return _view;
}

- (Class) render {
  return [LPDGuideMaskButtonRender class];
}

@end
