//
//  main.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Espada.h"
#import "Magia.h"
#import "Machado.h"
#import "ArcoeFlecha.h"
#import "LeagueOfOrientedObject.h"
#import <time.h>



    int main(int argc, const char * argv[])
    {
        
        @autoreleasepool {
            srand((unsigned) time(NULL));
            int raca, armap,armas;
            Arma *arma1 = [Arma new];
            Arma *arma2 = [Arma new];
            Arma *arma3 = [Arma new];
            Arma *arma4 = [Arma new];
            NSLog(@"\nPlayer 1: Escolha uma arma principal:");
            NSLog(@"\n0- Arco e flecha\n1-Espada\n2-Magia\n3-Machado");
            scanf("%d",&armap);
            switch (armap) {
                case 0: {
                    arma1 = [[ArcoeFlecha alloc] initWithflechas:10];
                    break;
                }
                case 1: {
                   arma1 = [[Espada alloc] initWithForca:100 andDesgaste:10];
                    break;
                }
                case 2: {
                    arma1  = [[Magia alloc] initWithSkill:10];
                    break;
                }
                case 3: {
                    arma1 = [[Machado alloc] initWithForca:130 andDesgaste:20];
                    break;
                }
                default:
                    break;
            }
            
            NSLog(@"\nPlayer 1: Escolha uma arma secundaria:");
            NSLog(@"\n0- Arco e flecha\n1-Espada\n2-Magia\n3-Machado");
            scanf("%d",&armas);
            switch (armas) {
                case 0: {
                    arma2 = [[ArcoeFlecha alloc] initWithflechas:10];
                    break;
                }
                case 1: {
                    arma2 = [[Espada alloc] initWithForca:100 andDesgaste:10];
                    break;
                }
                case 2: {
                    arma2  = [[Magia alloc] initWithSkill:10];
                    break;
                }
                case 3: {
                    arma2 = [[Machado alloc] initWithForca:130 andDesgaste:20];
                    break;
                }
                default:
                    break;
            }
            
            NSLog(@"\nPlayer 1: Escolha uma raca:");
            NSLog(@"\n0-ELFO \n1-HUMANO\n2-ORC\n3-ANAO");
            scanf("%d",&raca);
            
            
            NSLog(@"\nPlayer 2: Escolha uma arma principal:");
            NSLog(@"\n0- Arco e flecha\n1-Espada\n2-Magia\n3-Machado");
            scanf("%d",&armap);
            switch (armap) {
                case 0: {
                    arma3 = [[ArcoeFlecha alloc] initWithflechas:10];
                    break;
                }
                case 1: {
                    arma3 = [[Espada alloc] initWithForca:100 andDesgaste:0];
                    break;
                }
                case 2: {
                    arma3  = [[Magia alloc] initWithSkill:10];
                    break;
                }
                case 3: {
                    arma3 = [[Machado alloc] initWithForca:100 andDesgaste:0];
                    break;
                }
                default:
                    break;
            }
             Jogador *player1 = [[Jogador alloc] initWithnome:@"Daniel" andRaca:raca andVida:100 andEscudo:10 andArma1:arma1  andArma2:arma2];
            NSLog(@"\nPlayer 2: Escolha uma arma secundaria:");
            NSLog(@"\n0- Arco e flecha\n1-Espada\n2-Magia\n3-Machado");
            scanf("%d",&armas);
            switch (armas) {
                case 0: {
                    arma4 = [[ArcoeFlecha alloc] initWithflechas:10];
                    break;
                }
                case 1: {
                    arma4 = [[Espada alloc] initWithForca:100 andDesgaste:0];
                    break;
                }
                case 2: {
                    arma4  = [[Magia alloc] initWithSkill:10];
                    break;
                }
                case 3: {
                    arma4 = [[Machado alloc] initWithForca:100 andDesgaste:0];
                    break;
                }
                default:
                    break;
            }
            NSLog(@"\nPlayer 2: Escolha uma raca:");
            NSLog(@"\n0-ELFO \n1-HUMANO\n2-ORC\n3-ANAO");
            scanf("%d",&raca);
            
            
            Jogador *player2 = [[Jogador alloc] initWithnome:@"Barbara" andRaca:raca andVida:100 andEscudo:10 andArma1:arma3 andArma2:arma4];
            LeagueOfOrientedObject *l1 = [[LeagueOfOrientedObject alloc] init];
            [l1 jogar:player1 andWith:player2];
            
            
        }
        return 0;
    }


