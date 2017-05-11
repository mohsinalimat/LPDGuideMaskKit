//
//  LPDGuideMaskTipsRender.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskTipsRender.h"

@implementation LPDGuideMaskTipsRender

-(void) render {
  UIImageView *imageView = [[UIImageView alloc] initWithImage:self.item.instance];
  imageView.frame = CGRectMake(self.item.center.x-self.item.size.width/2.0, self.item.center.y-self.item.size.height/2.0, self.item.size.width, self.item.size.height);
  
  [self.canvas addSubview:imageView];
}

@end
