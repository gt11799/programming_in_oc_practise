//
//  main.m
//  addressCardProject
//
//  Created by bruce on 15/3/23.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"gting405@163.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        [card1 print];
    }
    return 0;
}
