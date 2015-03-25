//
//  main.m
//  addressCardProject
//
//  Created by bruce on 15/3/23.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"gting405@163.com";
        NSString *bName = @"Gongong";
        NSString *bEmail = @"gii@xiaoher.com";
        NSString *cName = @"Tuii";
        NSString *cEmail = @"tuyun@xiaoher.com";
        
        AddressCard *myCard;
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];

        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda's Address Book"];
        
        card1.name = aName;
        card1.email = aEmail;
        
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        
        //[myBook list];
        
        myCard = [myBook lookup: @"tuii"];
        // [myCard print];
        
        NSLog(@"Lookup: tuii");
        myCard = [myBook lookup:@"tuii"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not Found");
        
        //[myBook removeCard: myCard];
        [myBook sort];
        [myBook list];
        
    }
    return 0;
}
