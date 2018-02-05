//
//  StatisticView.h
//  UIDemo
//
//  Created by 戴培琼 on 2018/1/18.
//  Copyright © 2018年 戴培琼. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface StatisticView : NSView
//结果值Lab
@property (weak) IBOutlet  NSTextFieldCell *resultLab;
//结果描述Lab
@property (weak) IBOutlet  NSTextFieldCell *resultTitleLab;

//PDCA Lab
@property (weak) IBOutlet  NSTextFieldCell *pdcaLab;
//PDCA描述Lab
@property (weak) IBOutlet  NSTextFieldCell *pdcaTitleLab;

//合格数Lab
@property (weak) IBOutlet  NSTextFieldCell *passNumberLab;
//合格数描述Lab
@property (weak) IBOutlet  NSTextFieldCell *passNumberTitleLab;

//不合格数Lab
@property (weak) IBOutlet  NSTextFieldCell *failNumberLab;
//不合格数描述Lab
@property (weak) IBOutlet  NSTextFieldCell *failNumberTitleLab;

//总数Lab
@property (weak) IBOutlet  NSTextFieldCell *totalNumberLab;
//总数描述Lab
@property (weak) IBOutlet  NSTextFieldCell *totalNumberTitleLab;

//通过率Lab
@property (weak) IBOutlet  NSTextFieldCell *passRateLab;
//通过率描述Lab
@property (weak) IBOutlet  NSTextFieldCell *passRateTitleLab;


/**
 统计界面刷新方法

 @param passNum 合格数
 @param failNum 不合格数
 @param totalNum 总数
 @param passingRateNum 通过率
 @param isPass 本次测试结果
 */
-(void)ShowResultsWithPassNum:(NSUInteger)passNum failNum:(NSUInteger)failNum totalNum:(NSUInteger)totalNum passingRateNum:(float)passingRateNum andResult:(BOOL)isPass;


/**
 统计界面PDCA刷新方法

 @param isUploadOk PDCA上传结果
 */
-(void)refreshPDCAResultLblWithIsUploadOK:(BOOL) isUploadOk;



@end
