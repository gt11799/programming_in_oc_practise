//
//  EditroViewController.m
//  ModalEditor
//
//  Created by bruce on 15/5/13.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "EditroViewController.h"

@interface EditroViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;

- (IBAction)hideKeyBoard:(id)sender;

@end

@implementation EditroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.emailField.text = ((ViewController *) self.presentingViewController).emailLabel.text;
    // Do any additional setup after loading the view.
}

- (IBAction)updateEditor:(id)sender {
    ((ViewController *) self.presentingViewController).emailLabel.text = self.emailField.text;
}

- (IBAction)hideKeyboard:(id)sender {
    [self.emailField resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)hideKeyBoard:(id)sender {
}
@end
