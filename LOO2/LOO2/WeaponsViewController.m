//
//  WeaponsViewController.m
//  LOO2
//
//  Created by Renan Cargnin on 2/13/14.
//  Copyright (c) 2014 Vinicius Soares Lima. All rights reserved.
//

#import "WeaponsViewController.h"

@interface WeaponsViewController ()

@end

@implementation WeaponsViewController

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
    wepon1player2 = arc4random() % 3;
	wepon2player2 = arc4random() % 3;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
