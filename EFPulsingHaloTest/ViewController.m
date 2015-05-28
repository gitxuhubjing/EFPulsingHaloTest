//
//  ViewController.m
//  EFPulsingHaloTest
//
//  Created by JingXu on 15/5/28.
//  Copyright (c) 2015年 JingXu. All rights reserved.
//

#import "ViewController.h"
#import "PulsingHaloLayer.h"

@interface ViewController ()
@property (nonatomic, strong) PulsingHaloLayer *halo;
@property (nonatomic, weak) IBOutlet UIImageView *beaconView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.halo = [PulsingHaloLayer layer];
    float f = [UIScreen mainScreen].bounds.size.width;
    CGPoint point = self.beaconView.center;
    self.halo.position = self.beaconView.center;
    [self.view.layer insertSublayer:self.halo below:self.beaconView.layer];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
