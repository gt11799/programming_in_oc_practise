//
//  ViewController.h
//  tableViewPractise
//
//  Created by bruce on 15/4/12.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *data;
}
@property (retain, nonatomic)NSArray *data;

@end

