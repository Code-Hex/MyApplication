//
//  AppDelegate.m
//  MyApplication
//
//  Created by Kei Kamikawa on 2022/09/01.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)notification {
    NSLog(@"Hello applicationWillFinishLaunching!");
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSLog(@"Hello applicationDidFinishLaunching!");
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    NSLog(@"Hello applicationWillTerminate!");
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
