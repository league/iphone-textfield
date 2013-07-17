//
//  ViewController.h
//  textfield-demo
//
//  Created by Chris League on 7/17/13.
//  Copyright (c) 2013 Chris League. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UITextField *num1field;
@property IBOutlet UITextField *num2field;
@property IBOutlet UILabel *sumLabel;

-(BOOL)textFieldShouldReturn:(UITextField*)textField;
-(IBAction)textEdited:(id)sender;
@end
