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
  UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.canvas.frame];
  
  [path appendPath:[[UIBezierPath bezierPathWithRect:CGRectMake(self.item.center.x-self.item.size.width/2.0, self.item.center.y-self.item.size.height/2.0, self.item.size.width, self.item.size.height)] bezierPathByReversingPath]];
  
  CAShapeLayer *shapeLayer = [CAShapeLayer layer];
  shapeLayer.path = path.CGPath;
  
  self.canvas.layer.mask = shapeLayer;
}


@end
