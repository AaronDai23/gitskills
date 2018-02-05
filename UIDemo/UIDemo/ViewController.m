//
//  ViewController.m
//  UIDemo
//
//  Created by 戴培琼 on 2018/1/18.
//  Copyright © 2018年 戴培琼. All rights reserved.
//

#import "ViewController.h"
#import "StatisticView.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.ssss ShowResultsWithPassNum:12 failNum:12 totalNum:24 passingRateNum:0.5 andResult:YES];
    [self.ssss refreshPDCAResultLblWithIsUploadOK:YES];
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
