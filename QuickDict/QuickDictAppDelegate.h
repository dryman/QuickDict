//
//  QuickDictAppDelegate.h
//  QuickDict
//
//  Created by Felix Chern on 11/8/27.
//  Copyright 2011年 idryman@gmail.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreServices/CoreServices.h>

@interface QuickDictAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSTextField *DictText;
    NSMenu *dictMenu;
    NSStatusItem *menuStatus;
    NSSearchField *DictSearchField;
}

@property (assign) IBOutlet NSSearchField *DictSearchField;
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *DictText;
@property (assign) IBOutlet NSMenu *dictMenu;

- (IBAction)DictEnter:(id)sender;

@end
