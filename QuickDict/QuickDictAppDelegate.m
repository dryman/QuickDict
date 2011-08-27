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

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)DictEnter:(id)sender {
    CFRange text_range = DCSGetTermRangeInString(NULL, CFSTR("test"), 0);
    NSString* text_definition = (NSString*) DCSCopyTextDefinition(NULL, CFSTR("test"), text_range);
    NSLog("%@\n",text_definition);
    
    
}
@end
