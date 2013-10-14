//
//  CRFactory.h
//  Pirate Adventure
//
//  Created by Chris Roche on 10/9/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CRCharacter.h"
#import "CRBoss.h"

@interface CRFactory : NSObject

-(NSArray *)tiles;
-(CRCharacter *)character;
-(CRBoss *)boss;

@end
