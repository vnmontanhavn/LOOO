//
//  LeagueOfOrientedObject.m
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



    
@implementation LeagueOfOrientedObject

-(void) jogar:(Jogador *) j1 andWith:(Jogador *)j2
{
    srand(time(NULL));
    int iniciativa1 = rand()%2;
    double ataque;
    double ataqueEfet;
    int arma;
    if( iniciativa1==0)
    {
        NSLog(@"Player 1 comeca!");
        // NSLog(@"ataque: %f",[j1 ataque]);
        while (true)
        {
            NSLog(@"\np1 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j1 armap], [j1 armas] );
            scanf("%d",&arma);
            if(arma==1)
            {
                ataque = [j1 ataque];
                
                NSLog(@"Player 1 ataca com %@: %.2f",[j1 armap], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j2.vida -=ataqueEfet;
                NSLog(@"Player 2 sofre ataque de %@: %.2f",[j1 armap],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 2 vida: %.2f",[j2 vida]);
                [NSThread sleepForTimeInterval:1.0f];
            }
            else
            {
                ataque = [j1 ataque2];
                NSLog(@"Player 1 ataca com %@: %.2f",[j1 armap], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j2.vida -=ataqueEfet;
                NSLog(@"Player 2 sofre ataque de %@: %.2f",[j1 armap],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 2 vida: %.2f",[j2 vida]);
                [NSThread sleepForTimeInterval:1.0f];
            }
            if (j1.vida<=0 || j2.vida<=0)
            {
                break;
            }
            NSLog(@"\np2 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j2 armap], [j2 armas]);
            scanf("%d",&arma);
            if(arma ==1)
            {
                ataque = [j2 ataque];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armap],ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armap], ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 1 vida: %.2f",[j1 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                    
            }
            else
            {
                ataque = [j2 ataque2];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armap],ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armap], ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 1 vida: %.2f",[j1 vida]);
                [NSThread sleepForTimeInterval:1.0f];
            }
            if (j1.vida<=0 || j2.vida<=0)
            {
                break;
            }
        }
    }
    else
    {
        NSLog(@"Player 2 comeca!");
        //NSLog(@"ataque: %f",[j2 ataque]);
        while (true)
        {
          
           NSLog(@"\np2 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j2 armap], [j2 armas]);
            scanf("%d",&arma);
            if(arma ==1)
            {
                ataque = [j2 ataque];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armap], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armap],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 1 vida: %.2f",[j1 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                if (j1.vida<=0 || j2.vida<=0)
                {
                    break;
                }
            }
            else
            {
                ataque = [j2 ataque2];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armas], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armas],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 1 vida: %.2f",[j1 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                if (j1.vida<=0 || j2.vida<=0)
                {
                    break;
                }
            }
          
            NSLog(@"\np1 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j1 armap], [j1 armas]);
            scanf("%d",&arma);
            if(arma==1)
            {
                ataque = [j1 ataque];
                NSLog(@"Player 1 ataca com %@: %.2f",[j1 armap],ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j2.vida -=ataqueEfet;
                NSLog(@"Player 2 sofre ataque de %@: %.2f",[j1 armap], ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 2 vida: %.2f",[j2 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                if (j1.vida<=0 || j2.vida<=0)
                {
                    break;
                }
            }
            else
            {
                ataque = [j1 ataque2];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armas], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armas],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                NSLog(@"Player 1 vida: %.2f",[j2 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                if (j1.vida<=0 || j2.vida<=0)
                {
                    break;
                }
            }
        }
    }
    
    if(j1.vida>0)
        NSLog(@"\nPlayer 1 venceu!");
    else
        NSLog(@"\nPlayer 2 venceu!");
}



@end