//
//  ViewController.m
//  Exercise1
//
//  Created by Yin Kokpheng on 11/5/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeText:(id)sender {
    
    Person *person = [[Person alloc]init];
    
    
    if([person setName:_nameTextField.text] == false && [_ageTextField.text length] == 0){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Warning" message:@"Please complete the fields!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        _displayLabel.text = @"";
    }else{
        if ([person setName:_nameTextField.text] == false) {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Warning" message:@"Please enter your name!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            _displayLabel.text = @"";
            
        }else if([_ageTextField.text length] == 0){
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Warning" message:@"Please enter your age!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            _displayLabel.text = @"";
            
        }else{
            if ([person setAge:(int)_ageTextField.text.integerValue] == false) {
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Warning" message:@"You are not eligable to use this app!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
                [alert show];
                _displayLabel.text = @"";
            }else{
                _displayLabel.text = [NSString stringWithFormat:@"Hello! %@. You're %d", [person getName], [person getAge]];
                
            }
        }
    }
    
}

@end
