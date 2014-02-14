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
    //cria os jogadores
    player1 = [[Jogador alloc] init];
    player2 = [[Jogador alloc] init];
    
    //define recas
    player1.raca = self.raceP1;
    player2.raca = self.raceP2;
    
    //arma1 player 1
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
    
    //arma 2 player 1
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
    
    //arma 1 player 2
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
    
    
    //arma 2 player 2
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
    NSLog(@"%@",player2.armaPrimaria);
    NSLog(@"%@",player2.armaSecundaria);
    NSLog(@"%d",player2.raca);

    nome = [[NSMutableArray alloc]init];
    [nome addObject:@"Eduardo"];
    [nome addObject:@"Lombardi"];
    [nome addObject:@"Ribeiro"];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    [self.pickerView reloadAllComponents];
    
	// Do any additional setup after loading the view.
}

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return nome.count;
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //NSLog(@"%@/n",[nome objectAtIndex:row]);
    return [nome objectAtIndex:row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
