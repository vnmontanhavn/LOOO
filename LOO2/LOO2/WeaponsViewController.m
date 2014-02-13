//
//  WeaponsViewController.m
//  LOO2
//
//  Created by Renan Cargnin on 2/13/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import "WeaponsViewController.h"
#import "BatalhaViewController.h"

@interface WeaponsViewController ()

@end

@implementation WeaponsViewController

int qtd = 0;

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
    srand(time(NULL));
    wepon1player2 = arc4random() % 4;
    if ( wepon1player1 == 0)
        wepon2player2 = 1;
    if ( wepon1player1 == 1)
        wepon2player2 = 2;
	if ( wepon1player1 == 2)
        wepon2player2 = 3;
	if ( wepon1player1 == 3)
        wepon2player2 = 4;
    if ( wepon1player1 == 4)
        wepon2player2 = 0;
	
	
    
	//wepon2player2 = arc4random() % 4;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)espada:(id)sender {
    UIButton *theButton = (UIButton *)sender;
    if(qtd<2){
        if(qtd==0) {
        wepon1player1 = 1;
            theButton.enabled = NO;
        }
        else wepon2player1 =1;
        qtd++;
    }
    if (qtd>1){
        [self showBatalhaView];
    }
}

- (IBAction)magia:(id)sender {
    UIButton *theButton = (UIButton *)sender;
    if(qtd<2){
        if(qtd==0) {
            wepon1player1 = 4;
            theButton.enabled = NO;
        }
        else wepon2player1 =4;
        qtd++;
    }
    if (qtd>1){
        [self showBatalhaView];
    }
}

- (IBAction)arcoeflecha:(id)sender {
    UIButton *theButton = (UIButton *)sender;
    if(qtd<2){
        if(qtd==0) {
            wepon1player1 = 3;
            theButton.enabled = NO;
        }
        else wepon2player1 =3;
        qtd++;
    }
    if (qtd>1){
        [self showBatalhaView];
    }
}

- (IBAction)machado:(id)sender {
    UIButton *theButton = (UIButton *)sender;
    if(qtd<2){
        if(qtd==0) {
            wepon1player1 = 2;
        theButton.enabled = NO;
        }
        else wepon2player1 =2;
        qtd++;
    }
    if (qtd>1){
        [self showBatalhaView];
    }
}
- (void)showBatalhaView
{
    BatalhaViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"batalha"];
    controller.wep1P1 = wepon1player1;
    controller.wep2P1 = wepon2player1;
    controller.wep1P2 = wepon1player2;
    controller.wep2P2 = wepon2player2;
    controller.raceP1 = self.racep1;
    controller.raceP2 = self.racep2;
    
    [self presentViewController:controller animated:YES completion:nil];
}


@end
