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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnElfo:(id)sender {
    [self showWeaponsView];
}

- (IBAction)btnHumano:(id)sender {
    [self showWeaponsView];
}

- (IBAction)btnOrc:(id)sender {
    [self showWeaponsView];
}

- (IBAction)btnAnao:(id)sender {
    [self showWeaponsView];
}

- (void)showWeaponsView
{
    WeaponsViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"weapons"];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
