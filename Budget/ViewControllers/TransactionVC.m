//
//  TransactionVC.m
//  Budget
//
//  Created by Bob Grube on 2/11/13.
//  Copyright (c) 2013 Bob Grube. All rights reserved.
//

#import "TransactionVC.h"

@interface TransactionVC ()

@end

@implementation TransactionVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [Globals configureButton:_btnCategory];
    [Globals configureButton:_btnSave];
    [Globals configureButton:_btnDate];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.txtAmount endEditing:YES];// remove keyboard
    [self.txtName endEditing:YES];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string {
    
    double currentValue = [textField.text doubleValue];
    //Replace line above with this
    //double currentValue = [[textField text] substringFromIndex:1] doubleValue];
    double cents = round(currentValue * 100.0f);
    
    if ([string length]) {
        for (size_t i = 0; i < [string length]; i++) {
            unichar c = [string characterAtIndex:i];
            if (isnumber(c)) {
                cents *= 10;
                cents += c - '0';
            }
        }
    } else {
        // back Space
        cents = floor(cents / 10);
    }
    
    textField.text = [NSString stringWithFormat:@"%.2f", cents / 100.0f];
    //Add this line
    //[textField setText:[NSString stringWithFormat:@"$%@",[textField text]]];
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
