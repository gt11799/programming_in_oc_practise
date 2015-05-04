//
//  ViewController.m
//  FlowerWeb
//
//  Created by bruce on 15/5/3.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorChoice;
@property (weak, nonatomic) IBOutlet UIWebView *flowerView;
@property (weak, nonatomic) IBOutlet UIWebView *flowerDetailView;
@property (weak, nonatomic) IBOutlet UIButton *getFlower;
@property (weak, nonatomic) IBOutlet UISwitch *toggleFlowerDetail;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.flowerDetailView.hidden = YES;
    [self getFlower:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)toggleFlowerDetail:(id)sender
{
    self.flowerDetailView.hidden = ![sender isOn];
}

- (IBAction)getFlower:(id)sender
{
    NSURL *imageURL;
    NSURL *detailURL;
    NSString *imageURLString;
    NSString *detailURLString;
    NSString *color;
    int sessionID;
    
    color = [self.colorChoice titleForSegmentAtIndex:self.colorChoice.selectedSegmentIndex];
    sessionID = random() % 50000;
    
    imageURLString = [NSString stringWithFormat:@"http://www.floraphotographs.com/showrandomios.php?color=%@&sessionID=%d", color, sessionID];
    detailURLString = [NSString stringWithFormat:@"http://www.floraphotographs.com/detailios.php?session=%d", sessionID];
    
    imageURL = [NSURL URLWithString:imageURLString];
    detailURL = [NSURL URLWithString:detailURLString];
    
    [self.flowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
    [self.flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
