//
//  LPDGuideMaskCanvas.m
//  Pods
//
//  Created by ZhengYidong on 11/05/2017.
//
//

#import "LPDGuideMaskCanvas.h"
#import "LPDGuideMaskRender.h"
#import "LPDGuideMaskButtonItem.h"
#import <objc/runtime.h>

@interface LPDGuideMaskCanvas()

@property(nonatomic, strong, readwrite) UIView *canvas;
@property(nonatomic, assign) NSUInteger index;
@property(nonatomic, strong) NSMutableArray<id<LPDGuideMaskItemProtocol>> *items;

@end

@implementation LPDGuideMaskCanvas

- (UIView *) canvas {
  if (!_canvas) {
    _canvas = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _canvas.backgroundColor = [UIColor blackColor];
    _canvas.alpha = 0.8;
  }
  return _canvas;
}

- (instancetype) initWithItems:(NSMutableArray<id<LPDGuideMaskItemProtocol>> *)items index:(NSUInteger)index{
  if (self = [super init]) {
    _index = index;
    _items = items;
    [self renderWithItems:items];
  }
  return self;
}

- (void) renderWithItems:(NSMutableArray<id<LPDGuideMaskItemProtocol>> *)items {
  NSUInteger buttonItemCount = 0;
  LPDGuideMaskButtonItem *buttonItem = nil;
  
  for (id<LPDGuideMaskItemProtocol> item in items) {
    
    if ([item isKindOfClass:[LPDGuideMaskButtonItem class]]) {
      buttonItemCount++;
      buttonItem = item;
    }
    
    LPDGuideMaskRender *render = [[item.render alloc] initWithCanvas:self.canvas item:item];
    [render render];
  }
  
  if (0 == buttonItemCount) {
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    [self.canvas addGestureRecognizer:tapGesture];
  } else if (1 == buttonItemCount) {
    __weak typeof(self) weakSelf = self;
    buttonItem.clicked = ^{
      __strong typeof(weakSelf) strongSelf = weakSelf;
      if (strongSelf.clicked) {
        strongSelf.clicked(strongSelf.index);
      }
    };
  }
}

- (void)tapped:(UITapGestureRecognizer *)gesture {
  if (self.clicked) {
    self.clicked(self.index);
  }
}

@end
