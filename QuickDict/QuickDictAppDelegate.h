//
//  QuickDictAppDelegate.h
//  QuickDict
//
//  Created by Felix Chern on 11/8/27.
//  Copyright 2011年 idryman@gmail.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface QuickDictAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
