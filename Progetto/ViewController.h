//
//  ViewController.h
//  Progetto
//
//  Created by tommy on 25/04/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.


//stupid comment

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
@property (nonatomic, strong) UIAlertView *alert;
- (IBAction)test:(id)sender;
- (IBAction)prossima_screen:(id)sender;

@end