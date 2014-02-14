//
//  WeaponsViewController.h
//  LOO2
//
//  Created by Renan Cargnin on 2/13/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BatalhaViewController.h"
#import "Jogador.h"
#import "Espada.h"
#import "Machado.h"
#import "Magia.h"
#import "ArcoeFlecha.h"

@interface WeaponsViewController : UIViewController
{
    int wepon1player1;
    int wepon2player1;
    int wepon1player2;
    int wepon2player2;
}
@property(assign) int racep1;
@property(assign) int racep2;
@property(assign) NSString *nome1;
@property(assign) NSString *nome2;

- (IBAction)espada:(id)sender;
- (IBAction)magia:(id)sender;
- (IBAction)arcoeflecha:(id)sender;
- (IBAction)machado:(id)sender;

@end
