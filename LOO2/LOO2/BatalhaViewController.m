//
//  BatalhaViewController.m
//  LOO2
//
//  Created by Vinicius Soares Lima on 13/02/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import "BatalhaViewController.h"
#import "WeaponsViewController.h"

@interface BatalhaViewController ()

@end

@implementation BatalhaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    player1 = [[Jogador alloc] init];
    player2 = [[Jogador alloc] init];
    player1.raca = self.raceP1;
    player2.raca = self.raceP2;
    if (self.wep1P1==1) {
        player1.armaPrimaria = [[Espada alloc] init];
    }
    else if (self.wep1P1==2) {
        player1.armaPrimaria = [[Machado alloc]init];
    }
    else if (self.wep1P1==3) {
        player1.armaPrimaria = [[ArcoeFlecha alloc]init];
    }
    else  {
        player1.armaPrimaria = [[Magia alloc]init];
    }
    
    if (self.wep2P1==1) {
        player1.armaSecundaria = [[Espada alloc] init];
    }
    else if (self.wep2P1==2) {
        player1.armaSecundaria =[[Machado alloc]init];
    }
    else if (self.wep2P1==3) {
        player1.armaSecundaria = [[ArcoeFlecha alloc]init];
    }
    else  {
        player1.armaSecundaria = [[Magia alloc]init];
    }
    
    if (self.wep1P2==1) {
        player2.armaPrimaria = [[Espada alloc] init];
    }
    else if (self.wep1P2==2) {
        player2.armaPrimaria =[[Machado alloc]init];
    }
    else if (self.wep1P2==3) {
        player2.armaPrimaria = [[ArcoeFlecha alloc]init];
    }
    else  {
        player2.armaPrimaria = [[Magia alloc]init];
    }
    
    if (self.wep2P2==1) {
        player2.armaSecundaria = [[Espada alloc] init];
    }
    else if (self.wep2P2==2) {
        player2.armaSecundaria =[[Machado alloc]init];
    }
    else if (self.wep2P2==3) {
        player2.armaSecundaria = [[ArcoeFlecha alloc]init];
    }
    else  {
        player2.armaSecundaria = [[Magia alloc]init];
    }
    
    NSLog(@"%@",player1.armaPrimaria);
    NSLog(@"%@",player1.armaSecundaria);
    NSLog(@"%d",player1.raca);

    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
