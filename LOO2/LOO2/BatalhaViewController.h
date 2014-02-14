//
//  BatalhaViewController.h
//  LOO2
//
//  Created by Vinicius Soares Lima on 13/02/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Jogador.h"
#import "CharactersViewController.h"
#import "WeaponsViewController.h"
@interface BatalhaViewController : UIViewController
{
    Jogador *player1;
    Jogador *player2;
    NSMutableArray * nome;
    
    
}

@property(assign) int raceP1;
@property(assign) int raceP2;
@property(assign) int wep1P1;
@property(assign) int wep2P1;
@property(assign) int wep1P2;
@property(assign) int wep2P2;
@property(assign) NSString *nome1;
@property(assign) NSString *nome2;
@end
