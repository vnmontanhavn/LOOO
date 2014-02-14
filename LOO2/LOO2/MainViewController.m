//
//  MainViewController.m
//  LOO2
//
//  Created by Renan Cargnin on 2/13/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import "MainViewController.h"
#import "CharactersViewController.h"
#import "NomeViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showCharacterView:(UIButton *)sender {
    NomeViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"Nome"];
    
    [self presentViewController:controller animated:YES completion:nil];
}

@end
