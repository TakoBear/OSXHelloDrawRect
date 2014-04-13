//
//  bearAppDelegate.h
//  HelloDrawRect
//
//  Created by Bear on 2014/4/13.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MainWindowController;

@interface bearAppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) MainWindowController *mainWindowController;

@end
