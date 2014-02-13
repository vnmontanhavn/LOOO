//
//  ArcoeFlecha.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import "ArcoeFlecha.h"

@implementation ArcoeFlecha
-(NSString *) nome {
    return @"arco e flecha";
}
-(ArcoeFlecha *) initWithflechas:(int)f{
    self=  [super init];
    if(self){
        quantflechas=f;
    }
    return self;
}

-(double) calcularForcaAtaque:(Jogador *)j{
    
    if(quantflechas < 0){
        NSLog(@"Sem flechas!");
        return 0;
    }
    quantflechas--;
    if(j.raca == 0){
        
        return [j calcAtk] + 1.1*[self getPrecisaoAtk]*50;
    }
    
    return [j calcAtk]+ 1.0*[self getPrecisaoAtk]*50;
}
@synthesize quantflechas;
@end
