//
//  main.m
//  definePractise
//
//  Created by bruce on 15/3/19.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#define IS_LEAP_YEAR(y) y % 4 == 0 && y % 100 != 0 || y % 400 == 0
#define IPAD
#ifdef IPAD
# define kkkk 6
#else
# define kkkk 7
#endif

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char word[] = {'H', 'e', 'i', 'p','!','\0', '8'};
        int i;
        for (i = 0; i < 6; ++i) {
            NSLog(@"%c",word[i]);
        }
        NSLog(@"%s",word);
        NSLog(@"Hello, World!");
        
        void (^print_message)(void) =
        ^(void) {
            NSLog(@"print this message");
        };
        print_message();
        
        struct date
        {
            int month;
            int day;
            int year;
        };
        
        struct date today;
        today.month = 3;
        today.day = 25;
        today.year = 2015;
        
        NSLog(@"Today'date is %i/%i/%.2i.", today.month, today.day, today.year % 100);
    }
    return 0;
}
