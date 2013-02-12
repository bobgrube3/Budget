//
//  Globals.h
//  Budget
//
//  Created by Bob Grube on 2/11/13.
//  Copyright (c) 2013 Bob Grube. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Globals : NSObject

+ (Globals *) sharedInstance;
+ (void) configureButton:(UIButton *)btn;

@end
