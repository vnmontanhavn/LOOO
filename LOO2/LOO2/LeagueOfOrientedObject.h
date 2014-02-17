//
//  LeagueOfOrientedObject.h
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "BatalhaViewController.h"

@interface LeagueOfOrientedObject : NSObject
{
    NSString *nomej1;
    NSString *nomej2;
    NSMutableArray *batalha;
    bool teste;
}
    
-(void) jogar:(Jogador *) j1 andWith:(Jogador *)j2;
-(void) setnomes:(NSString *) j1 andWith:(NSString *)j2;
- (NSMutableArray*) getlista;
@end

