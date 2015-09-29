//
//  ViewController.m
//  YGKVODemo
//
//  Created by YURI_JOU on 15/9/29.
//  Copyright © 2015年 oenius. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+YGExtra.h"

@interface ViewController ()

@property (nonatomic, assign) NSInteger care;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  

  /*  bad logic
   
  [self addObserver:self forKeyPath:@"care" options:NSKeyValueObservingOptionNew context:nil];
  
  self.care = 1;
  
  [self removeObserver:self forKeyPath:@"care"];
  [self removeObserver:self forKeyPath:@"care"];
  [self removeObserver:self forKeyPath:@"care"];
   
   */
  
  [self yg_addObserver:self forKeyPath:@"care" options:NSKeyValueObservingOptionNew context:nil];
  
  self.care = 1;
  
  [self yg_removeObserver:self forKeyPath:@"care"];
  [self yg_removeObserver:self forKeyPath:@"care"];
  [self yg_removeObserver:self forKeyPath:@"care"];
  

}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end
