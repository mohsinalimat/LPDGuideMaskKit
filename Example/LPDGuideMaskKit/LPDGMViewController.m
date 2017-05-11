//
//  LPDGMViewController.m
//  LPDGuideMaskKit
//
//  Created by mmoaay on 05/10/2017.
//  Copyright (c) 2017 mmoaay. All rights reserved.
//

#import "LPDGMViewController.h"
#import <LPDGuideMaskKit/LPDGuideMaskKit.h>
#import <LPDGuideMaskKit/LPDGuideMaskTipsItem.h>
#import <LPDGuideMaskKit/LPDGuideMaskHollowItem.h>
#import <LPDGuideMaskKit/LPDGuideMaskButtonItem.h>

@interface LPDGMViewController ()

@property (weak, nonatomic) IBOutlet UIView *guideOne;
@property (weak, nonatomic) IBOutlet UIView *guideTwo;
@property (weak, nonatomic) IBOutlet UIView *guideThree;

@end

@implementation LPDGMViewController

- (UILabel *) nextWithTitle: (NSString *) title {
  UILabel *next = [[UILabel alloc] init];
  next.layer.cornerRadius = 5.0;
  next.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.4];
  next.layer.borderColor = [UIColor lightGrayColor].CGColor;
  next.layer.borderWidth = 1.0;
  next.textAlignment = NSTextAlignmentCenter;
  next.userInteractionEnabled = YES;
  next.textColor = [UIColor whiteColor];
  next.font = [UIFont systemFontOfSize:16.0];
  next.text = title;
  
  return next;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  [self.view layoutIfNeeded];
  
//  [self show:nil];
}

- (IBAction)show:(id)sender {
  
  NSArray<id<LPDGuideMaskItemProtocol>> *guideOne = @[[[LPDGuideMaskHollowItem alloc] initWithCenter:self.guideOne.center size:self.guideOne.bounds.size],
                        [[LPDGuideMaskTipsItem alloc] initWithImage:[UIImage imageNamed:@"image_transferorder_guide2"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, 120+(170/2)) size:CGSizeMake(320, 170)],
                        [[LPDGuideMaskButtonItem alloc] initWithView:[self nextWithTitle:@"下一步"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(142+20)) size:CGSizeMake(100, 40)]
                        ];
  
  NSArray<id<LPDGuideMaskItemProtocol>> *guideTwo = @[
                        [[LPDGuideMaskHollowItem alloc] initWithCenter:self.guideTwo.center size:self.guideTwo.bounds.size],
                        [[LPDGuideMaskTipsItem alloc] initWithImage:[UIImage imageNamed:@"image_transferorder_guide3"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(120+(200/2))) size:CGSizeMake(320, 200)],
                        [[LPDGuideMaskButtonItem alloc] initWithView:[self nextWithTitle:@"下一步"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(142+20)) size:CGSizeMake(100, 40)]
                        ];
  
  NSArray<id<LPDGuideMaskItemProtocol>> *guideThree = @[
                          [[LPDGuideMaskHollowItem alloc] initWithCenter:self.guideThree.center size:self.guideThree.bounds.size],
                          [[LPDGuideMaskTipsItem alloc] initWithImage:[UIImage imageNamed:@"image_transferorder_guide4"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(120+(200/2))) size:CGSizeMake(320, 200)],
                          [[LPDGuideMaskButtonItem alloc] initWithView:[self nextWithTitle:@"开始转单"] center:CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-(142+20)) size:CGSizeMake(100, 40)]
                          ];
  
  [[LPDGuideMaskKit shared] setItems:@[guideOne, guideTwo, guideThree]];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
