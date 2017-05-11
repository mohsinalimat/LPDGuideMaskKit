//
//  LPDGuideMaskButtonItem.h
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskItem.h"

typedef void(^LPDGuideMaskButtonItemCompletion)();

@interface LPDGuideMaskButtonItem : LPDGuideMaskItem

- (instancetype) initWithView:(UIView *)view center:(CGPoint) center size:(CGSize) size;

@property (nonatomic, strong) LPDGuideMaskButtonItemCompletion clicked;

@end
