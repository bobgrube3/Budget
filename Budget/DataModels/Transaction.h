//
//  Transaction.h
//  Budget
//
//  Created by Bob Grube on 2/11/13.
//  Copyright (c) 2013 Bob Grube. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Transaction : NSObject

@property (nonatomic, retain) NSString  *name;
@property (nonatomic, assign) double    amount;
@property (nonatomic, retain) NSString  *category;
@property (nonatomic, assign) BOOL      flaggedForEdit;
@property (nonatomic, retain) UIImage   *image;
@property (nonatomic, retain) NSDate    *date;

@end
