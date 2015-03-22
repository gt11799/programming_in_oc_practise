//
//  main.m
//  cocoaPractise
//
//  Created by bruce on 15/3/22.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is a string A";
        NSString *str2 = @"This is a string B";
        NSString *res;
        NSRange subRange;
        
        res = [str1 substringToIndex: 3];
        NSLog(@"First 3 chars of str1: %@", res);
        
        res = [str1 substringFromIndex: 5];
        NSLog(@"chars from index 5 of str1: %@",res);
        
        res = [[str1 substringFromIndex: 8] substringToIndex: 6];
        NSLog(@"chars from index 8 through 13: %@",res);
        
        subRange = [str1 rangeOfString: @"string A"];
        NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
        
        subRange = [str1 rangeOfString: @"String B"];
        if (subRange.location == NSNotFound)
            NSLog(@"string is not found");
        else
            NSLog(@"string is at index %lu, length is %lu", subRange.location, subRange.length);
    }
    return 0;
}
