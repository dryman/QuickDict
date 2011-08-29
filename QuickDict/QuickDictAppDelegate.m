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

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)DictEnter:(id)sender {
    CFStringRef search_str = (CFStringRef)[DictSearchField stringValue];
    
    CFRange text_range = DCSGetTermRangeInString(NULL, search_str, 0);
    NSString* text_definition = (NSString*) DCSCopyTextDefinition(NULL, search_str, text_range);
    // NSLog("%@\n",text_definition);
    [DictText setStringValue:text_definition];
    NSLog(@"%@\n",[DictText stringValue]);
    
    
}
@end
