//
//  CRTile.h
//  Pirate Adventure
//
//  Created by Chris Roche on 10/9/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CRWeapon.h"
#import "CRArmor.h"

//BOOL actionButtonHidden = YES;

@interface CRTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backGroundImage;
@property (strong, nonatomic) NSString *actionButtonName;

@property (strong, nonatomic) CRWeapon *weapon;
@property (strong, nonatomic) CRArmor *armor;
@property (nonatomic) int healthEffect;

@property (strong, nonatomic) NSString *action;


@end
