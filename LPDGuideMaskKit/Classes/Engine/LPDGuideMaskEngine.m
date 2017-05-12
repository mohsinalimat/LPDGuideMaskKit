//
//  LPDGuideMaskEngine.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskEngine.h"
#import "LPDGuideMaskCanvas.h"

@interface LPDGuideMaskEngine()

@property (nonatomic, strong) NSMutableArray<LPDGuideMaskCanvas *> *canvases;

@end

@implementation LPDGuideMaskEngine

- (instancetype) initWithItems:(NSMutableArray<NSMutableArray<id<LPDGuideMaskItemProtocol>> *> *)items {
  if (self = [super init]) {
    [self renderWithItems:items];
  }
  
  return self;
}

- (void) renderWithItems:(NSMutableArray<NSMutableArray<id<LPDGuideMaskItemProtocol>> *> *)items {
  
  UIWindow *window = [UIApplication sharedApplication].delegate.window;
  
  UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:window.bounds];
  scrollView.pagingEnabled = YES;
  scrollView.scrollEnabled = NO;
  scrollView.showsHorizontalScrollIndicator = NO;
  scrollView.showsVerticalScrollIndicator = NO;
  
  [window addSubview:scrollView];
  
  NSUInteger canvasIndex = 0;
  
  self.canvases = [[NSMutableArray alloc] init];
  
  for (NSMutableArray<id<LPDGuideMaskItemProtocol>> *item in items) {
    LPDGuideMaskCanvas *canvas = [[LPDGuideMaskCanvas alloc] initWithItems:item index:canvasIndex];
    canvas.canvas.frame = CGRectOffset(canvas.canvas.bounds, canvasIndex*[UIScreen mainScreen].bounds.size.width, 0);
    [scrollView addSubview:canvas.canvas];
    
    canvas.clicked = ^(NSUInteger index){
      [scrollView setContentOffset:CGPointMake((index+1)*[UIScreen mainScreen].bounds.size.width, 0) animated:NO];
      
      if (index == items.count-1) {
        [scrollView removeFromSuperview];
      }
    };
    
    canvasIndex++;
    
    [self.canvases addObject:canvas];
  }
}

@end
