//
//  MyApplication.h
//  MyApplication
//
//  Created by Kei Kamikawa on 2022/09/01.
//

#import <Cocoa/Cocoa.h>

int MyApplicationMain(int argc, const char **argv);

@interface MyApplication : NSApplication {
    bool shouldKeepRunning;
}

@end
