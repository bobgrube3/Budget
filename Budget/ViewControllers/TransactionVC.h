//
//  TransactionVC.h
//  Budget
//
//  Created by Bob Grube on 2/11/13.
//  Copyright (c) 2013 Bob Grube. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Globals.h"

@interface TransactionVC : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtAmount;
@property (weak, nonatomic) IBOutlet UIButton *btnCategory;
@property (weak, nonatomic) IBOutlet UIButton *btnCamera;
@property (weak, nonatomic) IBOutlet UISwitch *swtchFlagForLater;
@property (weak, nonatomic) IBOutlet UIButton *btnSave;
@property (weak, nonatomic) IBOutlet UIButton *btnDate;

@end