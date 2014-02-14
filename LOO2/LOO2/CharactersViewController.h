//
//  ViewController.h
//  LOO2
//
//  Created by Vinicius Soares Lima on 13/02/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Jogador.h"
#import "BatalhaViewController.h"


@interface CharactersViewController : UIViewController
{
    int raceplayer1;
    int raceplayer2;
    NSString *nome;
}
@property(assign) NSString *nome1;
@property(assign) NSString *nome2;
- (IBAction)btnElfo:(id)sender;
- (IBAction)btnHumano:(id)sender;
- (IBAction)btnOrc:(id)sender;
- (IBAction)btnAnao:(id)sender;

@end
