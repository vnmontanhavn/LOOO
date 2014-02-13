//
//  Magia.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import "Magia.h"

@implementation Magia
-(NSString *) nome {
    return @"magia";
}
-(double) calcularForcaAtaque:(Jogador *)j{
    if( j.raca == 0 || j.raca ==2){
        skill+=5;
        return [j calcAtk] + 1.2*[self getPrecisaoAtk]*skill;
        
    }
    skill+=5;
    return [j calcAtk] + 1.0*[self getPrecisaoAtk]*skill;
}
-(Magia *) initWithSkill:(int)s{
    self=[super init];
    if(self){
        skill=s;
    }
    return self;
}
@synthesize skill;
@end
