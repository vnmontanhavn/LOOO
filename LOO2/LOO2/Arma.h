//
//  Arma.h
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Arma : NSObject{
    float precisaoAtaque;
    NSString *nome;
}
@property (nonatomic,strong) NSString *nome;
-(double) calcularForcaAtaque:(Jogador *) j;
-(float) getPrecisaoAtk;

@end
