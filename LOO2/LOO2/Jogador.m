//
//  Jogador.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import "Jogador.h"
#import "Arma.h"
#import "Espada.h"
#import "Machado.h"
#import "Magia.h"
#import "ArcoeFlecha.h"

@implementation Jogador
static int ELFO=0;
static int HUMANO=1;
static int ORC = 2;
static int ANAO=3;



+(int)HUMANO{
    
    return HUMANO;
}
+(int)ELFO{
    return ELFO;
}
+(int)ANAO{
    return ANAO;
}
+(int)ORC{
    return ORC;
}

-(Jogador *) initWithnome:(NSString *)n andRaca:(int)r andVida:(float)v andEscudo:(int)f andArma1:(Arma *)a1 andArma2:(Arma *)a2{
    self= [super init];
    if(self){
        nome = n;
        raca = r;
        vida = v;
        forcaescudo = f;
        armaPrimaria = a1;
        armaSecundaria = a2;
    }
    return self;
}

-(NSString *) armap {
    return [self.armaPrimaria nome];
}
-(NSString *) armas {
    return [self.armaSecundaria nome];
}
-(float) ataque{
    
    return  [self.armaPrimaria calcularForcaAtaque:self];
}

-(float) ataque2{
    
    return  [self.armaSecundaria calcularForcaAtaque:self]*0.8;
}

-(float) sofreAtaque:(double)forca {
    int r= rand()%100;
    float r2 = (float)r/100;
    double defesa = [self calcDef]*r2 + [self forcaescudo];
    //NSLog(@"Defesa : %f",defesa);
    double resultado = forca-defesa;
    if(resultado < 0 ) {
        NSLog(@"Defendido!");
        return 0;
    }
    else
        return resultado;
}
-(float) calcAtk{
    if (self.raca==2){
        return 10;
    }
    if(self.raca==3){
        return 5;
    }
    else
        return 0;
}

-(float) calcDef{
    if (self.raca==0){
        return 10;
    }
    if(self.raca==2){
        return 5;
    }
    else
        return 15;
}
-(float) vida {
    if(vida<0) {
        return 0;
    }
    else return vida;
}
@synthesize nome, raca, vida, forcaescudo, armaPrimaria, armaSecundaria, plusatk, plusdef;

@end
