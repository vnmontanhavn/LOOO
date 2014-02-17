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
#import "BatalhaViewController.h"


    
@implementation LeagueOfOrientedObject

-(void) setnomes:(NSString *) j1 andWith:(NSString *)j2{
    nomej1 = j1;
    nomej2 = j2;
}

- (NSMutableArray*) getlista {
    return batalha;
}

-(void) jogar:(Jogador *) j1 andWith:(Jogador *)j2
{
    
    batalha = [[NSMutableArray alloc]init];
    srand(time(NULL));
    int iniciativa1 = rand()%2;
    double ataque;
    double ataqueEfet;
    int arma;
    NSString *aux;
    if( iniciativa1==0)
    {
    
        [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",nomej1]];
        NSLog(@"Player 1 comeca!");
        // NSLog(@"ataque: %f",[j1 ataque]);
        while (true)
        {
            [batalha addObject:[NSString stringWithFormat:@"\np1 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",j1.armap, j1.armas ]];
            NSLog(@"\np1 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j1 armap], [j1 armas] );
            scanf("%d",&arma);
            
            if(arma==1)
            {
                ataque = [j1 ataque];
                //[nome addObject:[NSString stringWithFormat:@"Player 1 ataca com %@: %.2f",j1.armap, ataque]];
                [batalha addObject:[NSString stringWithFormat:@"%@ ataca com %@: %.2f",nomej1,j1.armap, ataque]];
                NSLog(@"Player 1 ataca com %@: %.2f",[j1 armap], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j2.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ sofre ataque de %@: %.2f",nomej2,j1.armap,ataqueEfet]];
                NSLog(@"Player 2 sofre ataque de %@: %.2f",[j1 armap],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                [batalha addObject:[NSString stringWithFormat:@"%@ vida: %.2f",nomej1,j2.vida]];
                NSLog(@"Player 2 vida: %.2f",[j2 vida]);
                [NSThread sleepForTimeInterval:1.0f];
            }
            else
            {
                ataque = [j1 ataque2];
                [batalha addObject:[NSString stringWithFormat:@"%@ ataca com %@: %.2f",nomej1,[j1 armap], ataque]];
                NSLog(@"Player 1 ataca com %@: %.2f",[j1 armap], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j2.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ sofre ataque de %@: %.2f",nomej2,[j1 armap],ataqueEfet]];
                NSLog(@"Player 2 sofre ataque de %@: %.2f",[j1 armap],ataqueEfet);
              //  [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",j1]];
                [NSThread sleepForTimeInterval:1.0f];
                [batalha addObject:[NSString stringWithFormat:@"%@ vida: %.2f",nomej2,j2.vida]];
                NSLog(@"Player 2 vida: %.2f",[j2 vida]);
                [NSThread sleepForTimeInterval:1.0f];
            }
            if (j1.vida<=0 || j2.vida<=0)
            {
                break;
            }
            [batalha addObject:[NSString stringWithFormat:@"\np2 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j2 armap], [j2 armas]]];
            NSLog(@"\np2 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j2 armap], [j2 armas]);
            scanf("%d",&arma);
            if(arma ==1)
            {
                ataque = [j2 ataque];
                [batalha addObject:[NSString stringWithFormat:@"%@ ataca com %@: %.2f",nomej2,j2.armap,ataque]];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armap],ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ sofre ataque de %@: %.2f",nomej2,j2.armap, ataqueEfet]];
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armap], ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                [batalha addObject:[NSString stringWithFormat:@"%@ vida: %.2f",nomej1,j1.vida]];
                NSLog(@"Player 1 vida: %.2f",[j1 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                    
            }
            else
            {
                ataque = [j2 ataque2];
                [batalha addObject:[NSString stringWithFormat:@"%@ ataca com %@: %.2f",nomej2,j2.armap,ataque]];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armap],ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ sofre ataque de %@: %.2f",nomej2,j2.armap, ataqueEfet]];
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armap], ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                [batalha addObject:[NSString stringWithFormat:@"%@ vida: %.2f",nomej1,j1.vida]];
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
        [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",nomej2]];
        NSLog(@"Player 2 comeca!");
        //NSLog(@"ataque: %f",[j2 ataque]);
        while (true)
        {
          [batalha addObject:[NSString stringWithFormat:@"\np2 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j2 armap], [j2 armas]]];
           NSLog(@"\np2 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j2 armap], [j2 armas]);
            scanf("%d",&arma);
            if(arma ==1)
            {
                ataque = [j2 ataque];
                [batalha addObject:[NSString stringWithFormat:@"%@ ataca com %@: %.2f",nomej2,[j2 armap], ataque]];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armap], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ sofre ataque de %@: %.2f",nomej1,[j2 armap],ataqueEfet]];
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armap],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                [batalha addObject:[NSString stringWithFormat:@"%@ vida: %.2f",nomej1,j1.vida]];
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
                [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",nomej1]];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armas], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j1 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",nomej1]];
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j2 armas],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                [batalha addObject:[NSString stringWithFormat:@"%@ vida: %.2f",nomej1,j1.vida]];
                NSLog(@"Player 1 vida: %.2f",[j1 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                if (j1.vida<=0 || j2.vida<=0)
                {
                    break;
                }
            }
            [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",nomej1]];
            NSLog(@"\np1 Escolha a arma que voce deseja usar: \n1-%@\n2-%@",[j1 armap], [j1 armas]);
            scanf("%d",&arma);
            if(arma==1)
            {
                ataque = [j1 ataque];
                [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",nomej1]];
                NSLog(@"Player 1 ataca com %@: %.2f",[j1 armap],ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j2.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ comeca!",nomej1]];
                NSLog(@"Player 2 sofre ataque de %@: %.2f",[j1 armap], ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                [batalha addObject:[NSString stringWithFormat:@"%@ vida: %f",nomej2, j2.vida]];
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
                [batalha addObject:[NSString stringWithFormat:@"%@ ataca com %@: %.2f",nomej2,j2.armas, ataque]];
                NSLog(@"Player 2 ataca com %@: %.2f",[j2 armas], ataque);
                [NSThread sleepForTimeInterval:1.0f];
                ataqueEfet = [j2 sofreAtaque:ataque];
                j1.vida -=ataqueEfet;
                [batalha addObject:[NSString stringWithFormat:@"%@ sofre ataque de %@: %.2f", nomej1,j2.armas,ataqueEfet]];
                NSLog(@"Player 1 sofre ataque de %@: %.2f",[j1 armas],ataqueEfet);
                [NSThread sleepForTimeInterval:1.0f];
                aux = [NSString stringWithFormat:@"%@ vida: %.2f",nomej2,j2.vida];
                [batalha addObject:(aux)];
                NSLog(@"Player 1 vida: %.2f",[j2 vida]);
                [NSThread sleepForTimeInterval:1.0f];
                if (j1.vida<=0 || j2.vida<=0)
                {
                    break;
                }
            }
        }
    }
    
    if(j1.vida>0){
        [batalha addObject:[NSString stringWithFormat:@"%@ venceu!",nomej1]];
        NSLog(@"\nPlayer 1 venceu!");
    }
    else{
        [batalha addObject:[NSString stringWithFormat:@"\%@ venceu!",nomej2]];
        NSLog(@"\nPlayer 2 venceu!");
    }
    
}


@end