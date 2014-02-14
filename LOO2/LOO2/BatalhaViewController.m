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
    UIImage *img;
    UIImage *img2;
    
    switch (player1.raca) {
        case 0:
             img = [UIImage imageNamed:@"elfo"];
            break;
        case 1:
            img = [UIImage imageNamed:@"orc"];
            break;
        case 2:
            img = [UIImage imageNamed:@"humano"];
            break;
        default:
            img = [UIImage imageNamed:@"anao"];
            break;
    }
    [_jogador setImage:img];
    
    switch (player2.raca) {
        case 0:
            img2 = [UIImage imageNamed:@"elfo"];
            break;
        case 1:
            img2 = [UIImage imageNamed:@"orc"];
            break;
        case 2:
            img2 = [UIImage imageNamed:@"humano"];
            break;
        default:
            img2 = [UIImage imageNamed:@"anao"];
            break;
    }
    [_inimigo setImage:img2];
    
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
    
    NSLog(@"%@",self.nome1);
    NSLog(@"%@",self.nome2);
    NSLog(@"%@",player1.armaPrimaria);
    NSLog(@"%@",player1.armaSecundaria);
    NSLog(@"%d",player1.raca);
    NSLog(@"%@",player2.armaPrimaria);
    NSLog(@"%@",player2.armaSecundaria);
    NSLog(@"%d",player2.raca);

    nome = [[NSMutableArray alloc]init];
    //[nome addObject:player1.nome];
    [nome addObject:[self nome1]];
    [nome addObject:[ player1 armaPrimaria].nome];
    [nome addObject:[player1 armaSecundaria].nome];
    
    [nome addObject:[self nome2]];
    [nome addObject:[ player2 armaPrimaria].nome];
    [nome addObject:[player2 armaSecundaria].nome];
    
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    [self.pickerView reloadAllComponents];
    
	// Do any additional setup after loading the view.
    
    player1Image.center = CGPointMake(-(player1Image.frame.size.width / 2), player1Image.center.y);
    /*
    [UIView animateWithDuration:4.0
                     animations:^{
                         player1Image.center = CGPointMake(160, player1Image.center.y);
                     }];
     */
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

- (IBAction)anima:(id)sender {
    srand(time(NULL));
    int num = 0;
    //int num = rand() % [nome count];
    
    while (num < [nome count]) {
    
        
        [self performSelector: @selector(update) withObject:nil afterDelay:4.0];
        num++;
    }
}
-(void)update
{
    [self.pickerView selectRow:5 inComponent:0 animated:YES];
}

@end
