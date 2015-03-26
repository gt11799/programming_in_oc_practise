//
//  AddressBook.m
//  addressCardProject
//
//  Created by bruce on 15/3/24.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

-(instancetype) initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
}

-(instancetype) init
{
    return [self initWithName: @"NoName"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject: theCard];
}

-(void) removeCard:(AddressCard *)theCard
{
    [book removeObjectIdenticalTo: theCard];
}

-(int) entries
{
    return (int)[book count];
}

-(void) list
{
    NSLog(@"========= Contents of : %@ ========", bookName);
    for ( AddressCard *theCard in book){
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    NSLog(@"===================================");
}

-(AddressCard *) lookup:(NSString *)theName
{
    NSUInteger result = [book indexOfObjectPassingTest: ^(id obj, NSUInteger idx, BOOL *stop)
                         {
                             if ([[obj name] caseInsensitiveCompare:theName] == NSOrderedSame) {
                                 *stop = YES;
                                 return YES;
                             }
                             else
                                 return NO;
                         }];
    if (result != NSNotFound)
        return book[result];
    else
        return nil;
}

-(NSMutableArray *) lookupAll:(NSString *)theName
{
    NSMutableArray *matches = [NSMutableArray array];
    
    NSUInteger result = [book indexOfObjectPassingTest: ^(id obj, NSUInteger idx, BOOL *stop)
                         {
                             if ([[obj name] caseInsensitiveCompare:theName] == NSOrderedSame) {
                                 [matches addObject:obj];
                                 return YES;
                             }
                             else
                                 return NO;
                         }];
    if ([matches count])
        return matches;
    else
        return nil;
    
    //return result;  //return the index
}



-(void) sort
{
    [book sortUsingSelector: @selector(compareNames:)];
}

@end
