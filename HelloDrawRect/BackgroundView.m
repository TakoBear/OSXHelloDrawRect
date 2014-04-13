//
//  BackgroundView.m
//  HelloDrawRect
//
//  Created by Bear on 2014/4/13.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import "BackgroundView.h"

// 圓角半徑
#define CORNER_RADIUS 16.0f

@implementation BackgroundView

- (void)drawRect:(NSRect)dirtyRect
{
    // 設定背景顏色
    NSColor *bgcolor = [NSColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.8f];
    
    // 畫出圓角矩形的路徑
    NSBezierPath *path = [NSBezierPath bezierPathWithRoundedRect:[self bounds]
                                                         xRadius:CORNER_RADIUS
                                                         yRadius:CORNER_RADIUS];
    
    // 設定填充顏色
    [bgcolor setFill];
    
    // 將填充顏色填滿圓角矩形的路徑
    [path fill];
}

@end
