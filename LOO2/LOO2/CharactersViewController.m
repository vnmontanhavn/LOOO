//
//  ViewController.m
//  LOO2
//
//  Created by Vinicius Soares Lima on 13/02/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import "CharactersViewController.h"
#import "WeaponsViewController.h"


@interface CharactersViewController ()

@end

@implementation CharactersViewController


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    //define a raca do inimigo
    raceplayer2 = arc4random() % 4;
    nome= self.nome1;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnElfo:(id)sender {
    raceplayer1 =0;
    [self showWeaponsView];
}

- (IBAction)btnHumano:(id)sender {
    raceplayer1 =1;
    [self showWeaponsView];
}

- (IBAction)btnOrc:(id)sender {
    raceplayer1 =2;
    [self showWeaponsView];
}

- (IBAction)btnAnao:(id)sender {
    raceplayer1 =3;
    [self showWeaponsView];
}
//passa para a proxima tela
- (void)showWeaponsView
{
    WeaponsViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"weapons"];
    //passa os dados para a proxima tela
    controller.racep1 = raceplayer1;
    controller.racep2 = raceplayer2;
    controller.nome1 = nome;
    controller.nome2 = self.nome2;
    //----------------------------------
    [self presentViewController:controller animated:YES completion:nil];
}

@end
