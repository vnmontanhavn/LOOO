//
//  BatalhaViewController.m
//  LOO2
//
//  Created by Vinicius Soares Lima on 13/02/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import "BatalhaViewController.h"
#import "WeaponsViewController.h"
#import "LeagueOfOrientedObject.h"


@interface BatalhaViewController ()

@end

@implementation BatalhaViewController
int num = 0;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    
    if (self) {
        // Custom initialization
        
    }
    return self;
}
- (IBAction)reiniciaBatalha:(id)sender {
    NSLog(@"Reiniciar");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //cria os jogadores
    player1 = [[Jogador alloc] init];
    player2 = [[Jogador alloc] init];
    [_reiniciaBatalha setHidden:YES];
    
    //define recas
    player1.raca = self.raceP1;
    player2.raca = self.raceP2;
    UIImage *img;
    UIImage *img2;
    
    [_nomeP1 setText:self.nome1];
    [_nomeP2 setText:self.nome2];
    
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
        player1.armaPrimaria = [[Espada alloc] initWithForca:40 andDesgaste:10];
    }
    else if (self.wep1P1==2) {
        player1.armaPrimaria = [[Machado alloc]initWithForca:50 andDesgaste:10];
    }
    else if (self.wep1P1==3) {
        player1.armaPrimaria = [[ArcoeFlecha alloc]initWithflechas:50];
    }
    else  {
        player1.armaPrimaria = [[Magia alloc]initWithSkill:0.1];
    }
    
    //arma 2 player 1
    if (self.wep2P1==1) {
        player1.armaSecundaria = [[Espada alloc] initWithForca:40 andDesgaste:10];
    }
    else if (self.wep2P1==2) {
        player1.armaSecundaria =[[Machado alloc]initWithForca:50 andDesgaste:10];
    }
    else if (self.wep2P1==3) {
        player1.armaSecundaria = [[ArcoeFlecha alloc]initWithflechas:50];
    }
    else  {
        player1.armaSecundaria = [[Magia alloc]initWithSkill:0.1];
    }
    
    //arma 1 player 2
    if (self.wep1P2==1) {
        player2.armaPrimaria = [[Espada alloc] initWithForca:40 andDesgaste:10];
    }
    else if (self.wep1P2==2) {
        player2.armaPrimaria =[[Machado alloc]initWithForca:50 andDesgaste:10];
    }
    else if (self.wep1P2==3) {
        player2.armaPrimaria = [[ArcoeFlecha alloc]initWithflechas:50];
    }
    else  {
        player2.armaPrimaria = [[Magia alloc]initWithSkill:0.1];
    }
    
    
    //arma 2 player 2
    if (self.wep2P2==1) {
        player2.armaSecundaria = [[Espada alloc] initWithForca:40 andDesgaste:10];
    }
    else if (self.wep2P2==2) {
        player2.armaSecundaria =[[Machado alloc]initWithForca:50 andDesgaste:10];
    }
    else if (self.wep2P2==3) {
        player2.armaSecundaria = [[ArcoeFlecha alloc]initWithflechas:50];
    }
    else  {
        player2.armaSecundaria = [[Magia alloc]initWithSkill:0.1];
    }
    
    NSLog(@"%@",self.nome1);
    NSLog(@"%@",self.nome2);
    NSLog(@"%@",player1.armaPrimaria);
    NSLog(@"%@",player1.armaSecundaria);
    NSLog(@"%d",player1.raca);
    NSLog(@"%@",player2.armaPrimaria);
    NSLog(@"%@",player2.armaSecundaria);
    NSLog(@"%d",player2.raca);
    player1.vida = 100;
    player2.vida=100;
    player1.forcaescudo = 5;
    player2.forcaescudo= 7;
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
    LeagueOfOrientedObject *l1 = [[LeagueOfOrientedObject alloc] init];
    
//    Jogador *player1 = [[Jogador alloc] initWithnome:player1.nome andRaca:player1.raca andVida:100 andEscudo:10 andArma1:player1.armaPrimaria  andArma2:player1.armaSecundaria];
//    Jogador *player2 = [[Jogador alloc] initWithnome:player2.nome andRaca:player2.raca andVida:100 andEscudo:10 andArma1:player2.armaPrimaria  andArma2:player2.armaSecundaria];
//    
    [l1 setnomes:self.nome1 andWith:self.nome2];
    [l1 jogar:player1 andWith:player2];
    NSMutableArray *aux = l1.getlista;
    nome =aux;
    NSString* nums = [NSString stringWithFormat:@"%d", num];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2
                                                      target:self
                                                    selector:@selector(update)
                                                    userInfo:nil
                                                     repeats:YES];
    

}

- (void)viewDidAppear:(BOOL)animated
{
    CGRect destination1Frame = self.jogador.frame;
    self.jogador.frame = CGRectMake(-self.jogador.frame.size.width, self.jogador.frame.origin.y, self.jogador.frame.size.width, self.jogador.frame.size.height);
    [self.jogador setHidden:NO];
    [UIView animateWithDuration:2
                     animations:^{
                         self.jogador.frame = destination1Frame;
                     }
                     completion:nil
     ];
    
    CGRect destination2Frame = self.inimigo.frame;
    self.inimigo.frame = CGRectMake(self.view.bounds.size.width + self.inimigo.frame.size.width, self.inimigo.frame.origin.y, self.inimigo.frame.size.width, self.inimigo.frame.size.height);
    [self.inimigo setHidden:NO];
    [UIView animateWithDuration:2
                     animations:^{
                         self.inimigo.frame = destination2Frame;
                     }
                     completion:nil
     ];
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
    return [nome objectAtIndex:row];
}
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UILabel* tView = (UILabel*)view;
    if (!tView){
        tView = [[UILabel alloc] init];
        // Setup label properties - frame, font, colors etc
        [tView setFont:[UIFont fontWithName:@"arial"  size:18]];
        [tView setTextAlignment:NSTextAlignmentCenter];

    }
    // Fill the label text here
    [tView setText:[nome objectAtIndex:row]];
    return tView;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)anima:(id)sender {
   }
-(void) update
{
    //NSLog(@"oooopss");
    [self.pickerView selectRow:num  inComponent:0 animated:YES];
    num++;
    
    if (num == nome.count) {
        //NSLog(@"acabou");
        [_jogador setHidden:YES];
        [_inimigo setHidden:YES];
        [_nomeP1 setHidden:YES];
        [_nomeP2 setHidden:YES];
        [_labelVS setHidden:YES];
        [_reiniciaBatalha setHidden:NO];
    }
}



@end
