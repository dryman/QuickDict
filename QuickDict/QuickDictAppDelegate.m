//
//  QuickDictAppDelegate.m
//  QuickDict
//
//  Created by Felix Chern on 11/8/27.
//  Copyright 2011年 idryman@gmail.com. All rights reserved.
//

#import "QuickDictAppDelegate.h"

@implementation QuickDictAppDelegate

@synthesize DictSearchField;
@synthesize window;
@synthesize DictText;
@synthesize dictMenu;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (void)awakeFromNib {
    menuStatus = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    [menuStatus setMenu: dictMenu];
    [menuStatus setTitle:@"Dict"];
    [menuStatus setHighlightMode:YES];
}
/*
- (void)menuWillOpen: dictMenu {
    [self performSelector:@selector(menuClick) 
               withObject:nil 
               afterDelay:0.0 
                  inModes: [NSArray arrayWithObject:NSRunLoopCommonModes]];
}
- (void)menuCLick{
    [[DictSearchField window] makeFirstResponder:DictSearchField];
}
 */

- (IBAction)DictEnter:(id)sender {
    CFStringRef search_str = (CFStringRef)[DictSearchField stringValue];
    
    CFRange text_range = DCSGetTermRangeInString(NULL, search_str, 0);
    NSString* text_definition = (NSString*) DCSCopyTextDefinition(NULL, search_str, text_range);
    // NSLog("%@\n",text_definition);
    [DictText setStringValue:text_definition];
    NSLog(@"%@\n",[DictText stringValue]);
}
@end
