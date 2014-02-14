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
- (IBAction)aplicar:(id)sender {
    CharactersViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"characters"];
    [self presentViewController:controller animated:YES completion:nil];
}


@end
