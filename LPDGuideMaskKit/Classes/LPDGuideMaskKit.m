//
//  LPDGuideMaskKit.m
//  Pods
//
//  Created by ZhengYidong on 10/05/2017.
//
//

#import "LPDGuideMaskKit.h"
#import "LPDGuideMaskEngine.h"

@interface LPDGuideMaskKit()

@property (nonatomic, strong) LPDGuideMaskEngine *engine;

@end

@implementation LPDGuideMaskKit

+ (instancetype)shared {
  static LPDGuideMaskKit *shared = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    shared = [[LPDGuideMaskKit alloc] init];
  });
  return shared;
}

- (void) setItems:(NSMutableArray<NSMutableArray<id<LPDGuideMaskItemProtocol>> *> *)items withKey:(NSString *)key{
  
  if (!key || [@"" isEqualToString:key]) {
    _engine = [[LPDGuideMaskEngine alloc] initWithItems:items];
  } else {
    BOOL alreadShowed = [[NSUserDefaults standardUserDefaults] boolForKey:key];
    
    if (!alreadShowed) {
      _engine = [[LPDGuideMaskEngine alloc] initWithItems:items];
      
      [[NSUserDefaults standardUserDefaults] setBool:YES forKey:key];
    }
  }
}

@end
