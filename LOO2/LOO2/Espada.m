//
//  Espada.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import "Espada.h"

@implementation Espada
-(NSString *) nome {
    return @"espada";
}
-(double)calcularForcaAtaque:(Jogador *)j{
   
    if(j.raca == 1){
        return [j calcAtk] + 1.1*[self getPrecisaoAtk]*self.forcamax - 0.1*desgaste;
    }
    else if(j.raca == 2){
        return [j calcAtk] + 1.1*[self getPrecisaoAtk]* self.forcamax - 0.1*desgaste;
    } else
    return [j calcAtk] + 1.0*[self getPrecisaoAtk]*self.forcamax - 0.1*desgaste;
}
-(Espada *) initWithForca:(int)f andDesgaste:(int)d{
    self= [super init];
    if(self){
        forcamax=f;
        desgaste=d;
    }
    return self;
}
@synthesize forcamax, desgaste;
@end
