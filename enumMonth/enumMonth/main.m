//
//  main.m
//  enumMonth
//
//  Created by bruce on 15/3/11.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum month { january = 1, februray, march, april, may, june,
            july, august, septempber, october, november, december
        };
        enum month amonth;
        int  days;
        
        NSLog(@"Enter month number: ");
        scanf("%i", &amonth);
        
        switch (amonth) {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case septempber:
            case november:
                days = 30;
                break;
            case februray:
                days = 28;
                break;
            default:
                NSLog(@"bad month number");
                days = 0;
                break;
        }
        
        if ( days != 0 ) {
            NSLog(@"Numberof days is %i", days);
        }
        
        if ( amonth == februray) {
            NSLog(@"... or 29 if it's a leap year");
        }
    }
    return 0;
}
