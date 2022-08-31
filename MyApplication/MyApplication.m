//
//  MyApplication.m
//  MyApplication
//
//  Created by Kei Kamikawa on 2022/09/01.
//

#import "MyApplication.h"

@implementation MyApplication

- (void)run {
    @autoreleasepool {
        [self finishLaunching];

        NSLog(@"Hello Event Loop");

        shouldKeepRunning = YES;
        do {
            NSEvent *event = [self
                    nextEventMatchingMask:NSEventMaskAny
                    untilDate:[NSDate distantFuture]
                    inMode:NSDefaultRunLoopMode
                    dequeue:YES];
//            NSLog(@"event!: %@", event);
            [self sendEvent:event];
            [self updateWindows];
        } while (shouldKeepRunning);
    }
}

- (void)terminate:(id)sender {
//    NSLog(@"called terminate!");
    shouldKeepRunning = NO;
}

@end

int MyApplicationMain(int argc, const char **argv) {
    @autoreleasepool {
        [MyApplication sharedApplication];

        [NSBundle loadNibNamed:@"MainMenu" owner:NSApp];

        if ([NSApp respondsToSelector:@selector(run)]) {
            [NSApp
                performSelectorOnMainThread:@selector(run)
                withObject:nil
                waitUntilDone:YES];
        }
    }
    return 0;
}
