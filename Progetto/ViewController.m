//
//  ViewController.m
//  Progetto
//
//  Created by tommy on 25/04/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *bottone = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottone setTitle:@"Show View" forState:UIControlStateNormal];
    [bottone addTarget:self
               action:@selector(aMethod:)
     forControlEvents:UIControlEventTouchUpInside];
    bottone.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:bottone];
    
    self.alert = [[UIAlertView alloc] init];
    self.alert.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)prossima_screen:(id)sender
{self.alert.title=@"per la prossima screen";
    self.alert.message=@"asdfghj";
    [self.alert addButtonWithTitle:@"stinga"];
    [self.alert show];

    
}


- (IBAction)test:(id)sender {
    self.alert.title = @"Titolo";
    self.alert.message = @"messaggio";
    [self.alert addButtonWithTitle:@"bottone"];
    [self.alert addButtonWithTitle:@"bottone1"];
    [self.alert addButtonWithTitle:@"bottone2"];
    [self.alert show];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *testo = @"sdfljkghsdiofghjskfjghsdf";
    NSString *testo2 = [NSString stringWithFormat:@"testo %@", testo];
    NSLog(@"Bottone cliccato: %ld | prova: %@", (long)buttonIndex, testo2);   // log showing each time a button is pressed
}

@end
