//
//  StatisticView.m
//  UIDemo
//
//  Created by 戴培琼 on 2018/1/18.
//  Copyright © 2018年 戴培琼. All rights reserved.
//

#import "StatisticView.h"

@implementation StatisticView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}
//界面数据状态更新
-(void)ShowResultsWithPassNum:(NSUInteger)passNum failNum:(NSUInteger)failNum totalNum:(NSUInteger)totalNum passingRateNum:(float)passingRateNum andResult:(BOOL)isPass
{
    
    if (isPass) {
        self.resultLab.title=@"PASS";
        self.resultLab.textColor=[NSColor colorWithCGColor:CGColorCreateGenericRGB(48/255.0, 167/255.0, 68/255.0, 1)];
    }else
    {
        self.resultLab.title=@"FAIL";
        self.resultLab.textColor=[NSColor redColor];
    }
    self.passNumberLab.title=[NSString stringWithFormat:@"%ld",passNum];
    self.failNumberLab.title=[NSString stringWithFormat:@"%ld",failNum];
    self.totalNumberLab.title=[NSString stringWithFormat:@"%ld",totalNum];
    self.passRateLab.title=[NSString stringWithFormat:@"%.02f%%",passingRateNum];
}

-(void)refreshPDCAResultLblWithIsUploadOK:(BOOL) isUploadOk
{
    if (isUploadOk) {
        self.pdcaLab.textColor=[NSColor colorWithCGColor:CGColorCreateGenericRGB(48/255.0, 167/255.0, 68/255.0, 1)];
        self.pdcaLab.title=@"PASS";
    }else
    {
        self.pdcaLab.textColor=[NSColor redColor];
        self.pdcaLab.title=@"FAIL";
    }
    
}
@end
