//
//  NomeViewController.m
//  LOO2
//
//  Created by Vinicius Soares Lima on 14/02/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import "NomeViewController.h"
#import "CharactersViewController.h"

@interface NomeViewController ()

@end

@implementation NomeViewController

NSString *nomeinimigo;

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
    self.fieldnome.delegate = self;
    int aux;
    
    aux = arc4random() % 10;
    switch (aux) {
        case 0:
            nomeinimigo = @"Lafriscen";
            break;
        case 1:
            nomeinimigo = @"Timrisbeorth";
            break;
        case 2:
            nomeinimigo = @"Badzockskab";
            break;
        case 3:
            nomeinimigo = @"Gashtanbug";
            break;
        case 4:
            nomeinimigo = @"Rog-buck";
            break;
        case 5:
            nomeinimigo = @"Thrilgrímnu";
            break;
        case 6:
            nomeinimigo = @"Glokjalmus";
            break;
        case 7:
            nomeinimigo = @"Thôr-kjalrun";
            break;
        case 8:
            nomeinimigo = @"Hir'il";
            break;
        case 9:
            nomeinimigo = @"Azlethtor";
            break;
        default:
            nomeinimigo = @"Atinu";
            break;
    }
    
	// Do any additional setup after loading the view.
}

- (void)textFieldShouldReturn:(UITextField *)inputText
{
    if (inputText == self.fieldnome) {
        [inputText resignFirstResponder];
    }
    [self aplicar:nil];
}

     
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)aplicar:(id)sender {
    CharactersViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"characters"];
    controller.nome1 = self.fieldnome.text;
    controller.nome2 = nomeinimigo;
    [self presentViewController:controller animated:YES completion:nil];
}


@end
