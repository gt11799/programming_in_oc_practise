//
//  AddressCard.m
//  addressCardProject
//
//  Created by bruce on 15/3/23.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void) setName:(NSString *)theName andEmail:(NSString *) theEmail
{
    self.name = theName;
    self.email = theEmail;
}

-(void) print
{
    NSLog(@"========================");
    NSLog(@"|                   |");
    NSLog(@"|     %-31s", [name UTF8String]);
    NSLog(@"|     %-31s", [email UTF8String]);
    NSLog(@"|                   |");
    NSLog(@"|      O       O    |");
    NSLog(@"========================");
}

@end
