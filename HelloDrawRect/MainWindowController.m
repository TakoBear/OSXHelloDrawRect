//
//  MainWindowController.m
//  HelloDrawRect
//
//  Created by Bear on 2014/4/13.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import "MainWindowController.h"
#import "BackgroundView.h"

// 動畫長度
#define OPEN_DURATION 1.0f

@interface MainWindowController ()

@end

@implementation MainWindowController

/*
 * 顯示 Nib 的 View 至螢幕上
 */
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NSWindow *window = (id)[self window];
    
    // 設定視窗顯示的層級為彈出，以在最上層顯示
    [window setLevel:NSPopUpMenuWindowLevel];
    
    // 將視窗原有的背景設為透明
    [window setOpaque:NO];
    [window setBackgroundColor:[NSColor clearColor]];
    
    // 取得螢幕的 Frame Rectangle
    NSRect screenRect = [[[NSScreen screens] objectAtIndex:0] frame];
    
    // 設定視窗的起始位置(注意 OSX 的繪圖原點於左下角)
    NSRect panelRect = [window frame];
    panelRect.origin.x = roundf(NSMidX(screenRect) - NSWidth(panelRect) / 2);
    panelRect.origin.y = roundf(NSMidY(screenRect) - NSHeight(panelRect) / 2);
    
    // 設定視窗隱藏與透明
    [window setFrame:panelRect display:NO];
    [window setAlphaValue:0];
    
    // 設定視窗顯示時的動畫效果
    // 透明度從 0 至 1
    [NSAnimationContext beginGrouping];
    [[NSAnimationContext currentContext] setDuration:OPEN_DURATION];
    [[window animator] setFrame:panelRect display:YES];
    [[window animator] setAlphaValue:1];
    // 在動畫結束後將視窗層級調回一般，不再強制於最上層顯示
    // 此為 block 的用法，通常用於設置當任務完成時要執行的動作，在往後的教學中會提到。
    [[NSAnimationContext currentContext] setCompletionHandler:^{
        [window setLevel:NSNormalWindowLevel];
    }];
    [NSAnimationContext endGrouping];
}

/*
 * 關閉視窗
 */
- (IBAction)closeWindow:(id)sender
{
    [self close];
}

@end

