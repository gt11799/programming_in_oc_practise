//
//  textAnalyzeViewController.m
//  viewController
//
//  Created by bruce on 15/4/2.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "textAnalyzeViewController.h"

@interface textAnalyzeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorCharacterLabel;
@property (weak, nonatomic) IBOutlet UILabel *outlineCharacterLabel;

@end

@implementation textAnalyzeViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.textToAnalyze = [[NSAttributedString alloc] initWithString:@"test"
                                                         attributes:@{NSForegroundColorAttributeName:[UIColor greenColor],
                                                                      NSStrokeWidthAttributeName : @-3}];
}

-(void)setTextToAnalyze:(NSAttributedString *)textToAnalyze
{
    _textToAnalyze = textToAnalyze;
    if (self.view.window) [self updateUI];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateUI];
}

-(void)updateUI
{
    self.colorCharacterLabel.text = [NSString stringWithFormat:@"%d colorful characters",[[self charactersWithAttribute:NSForegroundColorAttributeName] length]];
    self.outlineCharacterLabel.text = [NSString stringWithFormat:@"%d outline characters",[[self charactersWithAttribute:NSStrokeWidthAttributeName] length]];
}

-(NSAttributedString *)charactersWithAttribute:(NSString *)attributteName
{
    NSMutableAttributedString *characters = [[NSMutableAttributedString alloc]init];
    int index = 0;
    
    while (index < [self.textToAnalyze length]) {
        NSRange range;
        id value = [self.textToAnalyze attribute:attributteName atIndex:index effectiveRange:&range];
        if (value){
            [characters appendAttributedString:[self.textToAnalyze attributedSubstringFromRange:range]];
            index = range.location + range.length;
        } else {
            index++;
        }
    }
    
    return characters;
}

@end

