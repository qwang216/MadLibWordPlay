//
//  ViewController.m
//  MadLib
//
//  Created by Diana Elezaj on 6/7/15.
//  Copyright (c) 2015 Diana Elezaj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *container;
@property (weak, nonatomic) IBOutlet UITextField *noun1;
@property (weak, nonatomic) IBOutlet UITextField *nounPlural;
@property (weak, nonatomic) IBOutlet UITextField *noun2;
@property (weak, nonatomic) IBOutlet UITextField *place;
@property (weak, nonatomic) IBOutlet UITextField *adjective;
@property (weak, nonatomic) IBOutlet UITextField *noun3;
@property (weak, nonatomic) IBOutlet UITextView *msg;


@end

@implementation ViewController
- (IBAction)goMad:(id)sender {
    NSString *noun1 = self.noun1.text;
    NSString *nounPlural = self.nounPlural.text;
    NSString *noun2 = self.noun2.text;
    NSString *place = self.place.text;
    NSString *adjective = self.adjective.text;
    NSString *noun3 = self.noun3.text;
    
    [self.container setHidden:YES];
    [self.msg setHidden:NO];
    
    
    self.msg.text = [NSString stringWithFormat: @"Be kind to your %@-footed %@ \nFor a duck may be somebody`s %@, \nBe kind to your %@ in %@ \nWhere the weather is always %@. \n\nYou may think that this is the %@, \nWell it is.\n", noun1, nounPlural, noun2, nounPlural, place, adjective, noun3];
    
}
- (IBAction)repeat:(id)sender {
    [self.container setHidden:NO];
    [self.msg setHidden:YES];
    [self.view setHidden:NO];

    
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
