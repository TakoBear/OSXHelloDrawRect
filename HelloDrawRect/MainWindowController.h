//
//  MainWindowController.h
//  HelloDrawRect
//
//  Created by Bear on 2014/4/13.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class BackgroundView;

@interface MainWindowController : NSWindowController

@property (nonatomic, weak) IBOutlet BackgroundView *backgroundView;

@end
