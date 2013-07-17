//
//  ViewController.m
//  textfield-demo
//
//  Created by Chris League on 7/17/13.
//  Copyright (c) 2013 Chris League. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(BOOL)textFieldShouldReturn:(UITextField*)textField {
    NSLog(@"textFieldShouldReturn %p", textField);
    NSLog(@"where 1 is %p, 2 is %p", self.num1field, self.num2field);
    if(textField == self.num1field) {
        [textField resignFirstResponder];
        return NO;
    }
    if(textField == self.num2field) {
        [textField resignFirstResponder];
        return NO;
    }
    NSLog(@" --> yes");
    return YES;
}

-(IBAction)textEdited:(id)sender
{
    NSString *txt = [self.num1field text];
    NSLog(@"txt is %d chars, '%@'", [txt length], txt);
    NSLog(@"blah %@", [self.num1field text]);
    float num1 = [self.num1field.text floatValue];
    float num2 = [self.num2field.text floatValue];
    NSLog(@"Text edited: %f + %f", num1, num2);
    float sum = num1 + num2;
    self.sumLabel.text = [NSString stringWithFormat:@"%f", sum];
}


@end
