//
//  ViewController.m
//  GWButton
//
//  Created by gw on 2019/3/3.
//  Copyright © 2019 gw. All rights reserved.
//

#import "ViewController.h"
#import "GW_Button/GWButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GWButton * bottomBtn = [[GWButton alloc] init];
    [self.view addSubview:bottomBtn];
    bottomBtn.style = GWButtonStyleBottom;
    bottomBtn.padding = 20;
    bottomBtn.space = 5;
    bottomBtn.backgroundColor = [UIColor orangeColor];
    bottomBtn.frame = CGRectMake(100, 240, 100, 100);
    [bottomBtn setTitle:@"文字" forState:UIControlStateNormal];
    [bottomBtn setImage:[UIImage imageNamed:@"contact"] forState:UIControlStateNormal];
    bottomBtn.titleLabel.backgroundColor = [UIColor redColor];
    bottomBtn.imageView.backgroundColor  = [UIColor yellowColor];
}


@end
