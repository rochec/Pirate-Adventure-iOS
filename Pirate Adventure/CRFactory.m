//
//  CRFactory.m
//  Pirate Adventure
//
//  Created by Chris Roche on 10/9/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import "CRFactory.h"
#import "CRTile.h"

@implementation CRFactory


-(NSArray *)tiles
{
    // Tile group 1
    CRTile *tile1 = [[CRTile alloc] init];
    tile1.story = @"Link wakes up and notices a candle burning and the door is open, but Uncle is nowhere in sight.  Link stands up and heads outside to look for his Uncle.";
    tile1.backGroundImage = [UIImage imageNamed:@"Link'sHouse.png"];
    tile1.action = @" ";
    tile1.actionButtonName = @"";
    
    
    CRTile *tile2 = [[CRTile alloc] init];
    tile2.story = @"Link notices his Uncle's wooden sword laying on the ground and a bunch of foot prints in the mud.  Woould you like to pick up the wooden sword?";
    tile2.backGroundImage = [UIImage imageNamed:@"Wooden-sword-with-pixels-drawn.jpg"];
    tile2.action = @"Would you like to pick up the Wooden Sword?";
    
    CRWeapon *woodenSword = [[CRWeapon alloc] init];
    woodenSword.name = @"Wooden Sword";
    woodenSword.damage = 12;
    tile2.weapon = woodenSword;
    tile2.actionButtonName = @"Take Sword";
    
    
    
    CRTile *tile3 = [[CRTile alloc] init];
    tile3.story = @"Link notices an Iron Chestplate near the Wooden Sword";
    
    CRArmor *ironArmor = [[CRArmor alloc] init];
    ironArmor.name = @"Iron Armor Chestplate";
    ironArmor.health = 15;
    tile3.armor = ironArmor;
    tile3.actionButtonName = @"Pick up Iron Armor Chestplate";
   
    
    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    // Tile group 2
    
    CRTile *tile4 = [[CRTile alloc] init];
    tile4.story = @"story 4";
    
    tile4.healthEffect = 12;
    
    CRTile *tile5 = [[CRTile alloc] init];
    tile5.story = @"story 5";
    
    CRArmor *parrotArmor = [[CRArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot Armor";
    tile5.armor = parrotArmor;
    
    CRTile *tile6 = [[CRTile alloc] init];
    tile6.story = @"story 6";
    
    CRWeapon *pistolWeapon = [[CRWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    
    tile6.weapon = pistolWeapon;
    
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];

    // Tile group 3
    
    CRTile *tile7 = [[CRTile alloc] init];
    tile7.story = @"story 7";
    
    tile7.healthEffect = -22;
    
    CRTile *tile8 = [[CRTile alloc] init];
    tile8.story = @"story 8";
    
    tile8.healthEffect = 8;
    
    CRTile *tile9 = [[CRTile alloc] init];
    tile9.story = @"story 9";
    
    tile9.healthEffect = -46;
    
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];

    // Tile group 4
    
    CRTile *tile10 = [[CRTile alloc] init];
    tile10.story = @"story 10";
    
    tile10.healthEffect = 20;
    
    CRTile *tile11 = [[CRTile alloc] init];
    tile11.story = @"story 11";
    
    tile11.healthEffect = -15;
    
    CRTile *tile12 = [[CRTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    
    tile12.healthEffect = -15;
    
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];

    // Tile factory

    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}


-(CRCharacter *)character
{
    CRCharacter *character = [[CRCharacter alloc] init];
    character.health = 100;
    
    CRArmor *armor = [[CRArmor alloc] init];
    character.armor = armor;
    armor.name = @"Cloak";
    armor.health = 5;
    
    CRWeapon *weapon = [[CRWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(CRBoss *)boss
{
    CRBoss *boss = [[CRBoss alloc] init];
    boss.health = 65;
    return boss;
    
}



@end
