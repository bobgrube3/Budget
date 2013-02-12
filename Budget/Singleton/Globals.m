//
//  Globals.m
//  Budget
//
//  Created by Bob Grube on 2/11/13.
//  Copyright (c) 2013 Bob Grube. All rights reserved.
//

#import "Globals.h"
#import <QuartzCore/QuartzCore.h>

@implementation Globals

+ (Globals *)sharedInstance
{
    static Globals *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Globals alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

+ (void) configureButton:(UIButton *)btn {
    // Set Gradient
    CAGradientLayer *btnGradient = [CAGradientLayer layer];
    btnGradient.frame = btn.bounds;
    btnGradient.colors = [NSArray arrayWithObjects:
                          (id)[[UIColor colorWithRed:0.0f / 255.0f green:173.0f / 255.0f blue:238.0f / 255.0f alpha:1.0f] CGColor],
                          (id)[[UIColor colorWithRed:0.0f / 255.0f green:120.0f / 255.0f blue:165.0f / 255.0f alpha:1.0f] CGColor],
                          nil];
    [btn.layer insertSublayer:btnGradient atIndex:0];
    
    // Round button corners
    CALayer *btnLayer = [btn layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
    
    // Set button text color
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

@end
