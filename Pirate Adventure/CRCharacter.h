//
//  CRCharacter.h
//  Pirate Adventure
//
//  Created by Chris Roche on 10/14/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CRWeapon.h"
#import "CRArmor.h"

@interface CRCharacter : NSObject

@property (strong, nonatomic) CRArmor *armor;
@property (strong, nonatomic) CRWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
