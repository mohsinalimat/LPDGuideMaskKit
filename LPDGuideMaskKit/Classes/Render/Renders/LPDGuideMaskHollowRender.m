//
//  LPDGuideMaskHollowRender.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskHollowRender.h"

@implementation LPDGuideMaskHollowRender

-(void) render {
  
  CGPathRef ref = ((CAShapeLayer *)self.canvas.layer.mask).path;
  UIBezierPath *path = nil;
  if (ref) {
    path = [UIBezierPath bezierPathWithCGPath:ref];
  } else {
    path = [UIBezierPath bezierPathWithRect:self.canvas.frame];
  }
  
  [path appendPath:[[UIBezierPath bezierPathWithRoundedRect:CGRectMake(self.item.center.x-self.item.size.width/2.0, self.item.center.y-self.item.size.height/2.0, self.item.size.width, self.item.size.height) cornerRadius:5.0] bezierPathByReversingPath]];

  CAShapeLayer *hollowLayer = [CAShapeLayer layer];
  hollowLayer.path = path.CGPath;
  
  self.canvas.layer.mask = hollowLayer;
  
  CAShapeLayer *borderLayer = [CAShapeLayer layer];
  borderLayer.bounds = CGRectMake(self.item.center.x-self.item.size.width/2.0, self.item.center.y-self.item.size.height/2.0, self.item.size.width, self.item.size.height);
  borderLayer.position = self.item.center;
  
  borderLayer.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(self.item.center.x-self.item.size.width/2.0, self.item.center.y-self.item.size.height/2.0, self.item.size.width, self.item.size.height) cornerRadius:5.0].CGPath;
  borderLayer.lineWidth = 2.0;
  borderLayer.lineDashPattern = @[@4, @4];
  borderLayer.fillColor = [UIColor clearColor].CGColor;
  borderLayer.strokeColor = [UIColor whiteColor].CGColor;
  
  [self.canvas.layer addSublayer:borderLayer];
}


@end
