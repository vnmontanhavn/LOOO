//
//  Jogador.h
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Arma;
@interface Jogador : NSObject{
    NSString *nome;
    int raca;
    float vida;
    int forcaescudo;
    Arma *armaPrimaria, *armaSecundaria;
    int plusdef, plusatk;
    
}
+(int)HUMANO;
+(int) ELFO;
+(int) ANAO;
+(int) ORC;
-(Jogador *) initWithnome:(NSString *)n andRaca:(int) r andVida:(float) v andEscudo:(int) f andArma1:(Arma *) a1 andArma2:(Arma *) a2;
-(NSString *) armap;
-(NSString *) armas;
-(float) ataque;
-(float) ataque2;
-(float) sofreAtaque:(double) forca;
-(float) calcDef;
-(float) calcAtk;
-(float) vida;
@property NSString *nome;
@property int raca;
@property float vida;
@property int forcaescudo, plusdef, plusatk;
@property Arma *armaPrimaria, *armaSecundaria;
@end
