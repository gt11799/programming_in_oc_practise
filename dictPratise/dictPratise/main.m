//
//  main.m
//  dictPratise
//
//  Created by bruce on 15/3/25.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSSet (Printing)
-(void) print;
@end

@implementation NSSet (Printing)

-(void) print {
    printf ("{");
    
    for (NSNumber *element in self) {
        printf(" %li ", (long) [element integerValue]);
    }
    
    printf("}");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @2, @5, @5, @19, nil];
        NSSet *set2 = [NSSet setWithObjects:@1, @100, @-10, nil];
        NSSet *set3 = [NSSet setWithObjects:@12, @200, @3, nil];
        [set1 print];
        [set2 print];
        
        if ([set1 isEqualToSet:set2] == YES)
            NSLog(@"set1 equals to set2");
        else
            NSLog(@"set1 is not equals to set2");
        
        if ([set1 containsObject:@19] == YES)
            NSLog(@"set1 contains 19");
        else
            NSLog(@"set1 not contains 19");
        
        [set1 addObject:@4];
        [set1 removeObject:@10];
        [set1 removeObject:@19];
        [set1 print];
        
        [set1 intersectSet:set2];
        NSLog(@"set1 intersect set2: ");
        [set1 print];
        
        [set1 unionSet:set3];
        NSLog(@"set1 union set3: ");
        [set1 print];
    }
    return 0;
}
