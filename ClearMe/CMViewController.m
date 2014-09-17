//
//  CMViewController.m
//  ClearMe
//
//  Created by Brandon Beecroft on 9/16/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CMViewController.h"

@interface CMViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *textField;
//@property (nonatomic, strong) id delegate;

@end

@implementation CMViewController

NSString *orgString = @"Something clever, but not that clever...";
NSString *newText = @"";


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.textField.delegate = self;

    self.title = @"Clear Me App";
    self.textField.text = orgString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonTapped:(id)sender {
    self.textField.text = newText;
}

- (IBAction)restoreText:(id)sender {
    self.textField.text = orgString;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
