//
//  main.m
//  urlPractise
//
//  Created by bruce on 15/3/26.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://www.baidu.com"];
        
        NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSASCIIStringEncoding error:NULL];
        
        NSLog(@"%@", myHomePage);
    }
    return 0;
}
