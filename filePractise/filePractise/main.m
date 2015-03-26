//
//  main.m
//  filePractise
//
//  Created by bruce on 15/3/26.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *fName = @"testfile";
        NSFileManager *fm;
        NSDictionary *attr;
        
        fm = [NSFileManager defaultManager];
        
        if ([fm fileExistsAtPath:fName] == NO) {
            NSLog(@"File does'nt exist!");
            return 1;
        }
        
        if ([fm copyItemAtPath:fName toPath:@"newfile" error:NULL] == NO) {
            NSLog(@"File Copy failed!");
            return 2;
        }
        
        if ([fm contentsEqualAtPath: fName andPath: @"newfile"] == NO) {
            NSLog(@"Files are Not Equal!");
            return 3;
        }
        
        if ([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL] == NO){
            NSLog(@"File rename Failed");
            return 4;
        }
        
        if ((attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL]) == nil) {
            NSLog(@"Couldn't get file atrributes!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
        
        if ([fm removeItemAtPath:fName error:NULL] == NO) {
            NSLog(@"file remove failed");
            return 6;
        }
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
    }
    return 0;
}
