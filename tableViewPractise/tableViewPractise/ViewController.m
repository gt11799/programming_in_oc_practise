//
//  ViewController.m
//  tableViewPractise
//
//  Created by bruce on 15/4/12.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController


@synthesize data;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *provinces = [[NSArray alloc] initWithObjects:@"山东", @"辽宁", @"广东", nil];
    self.data = provinces;
}

#pragma UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.data count];
}

#pragma UITableViewDelegate

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
    //cell id
    //reuse cell
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellTableIdentifier];
    }
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    return cell;
}



#pragma not use
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
