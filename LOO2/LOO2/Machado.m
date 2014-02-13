//
//  Machado.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import "Machado.h"

@implementation Machado
-(NSString *) nome {
    return @"machado";
}
-(double)calcularForcaAtaque:(Jogador *)j{
    if(j.raca == 3){
        return [j calcAtk] + 1.1*[self getPrecisaoAtk]* self.forcamax- 0.1*desgaste;

    }
    return [j calcAtk] + 1.0*[self getPrecisaoAtk]*self.forcamax- 0.1*desgaste;

}
-(Machado *) initWithForca:(int)f andDesgaste:(int)d{
    self= [super init];
    if(self){
        forcamax=f;
        desgaste=d;
    }
    return self;
}
@synthesize forcamax, desgaste;
@end
