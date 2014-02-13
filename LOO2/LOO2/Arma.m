//
//  Arma.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import "Arma.h"


@implementation Arma
@synthesize nome;
-(double)calcularForcaAtaque:(Jogador *)j{
    return 0;
}

-(float) getPrecisaoAtk{
    precisaoAtaque = rand()%40 + 60;
    return (precisaoAtaque/100);
}

@end
