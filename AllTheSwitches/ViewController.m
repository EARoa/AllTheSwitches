//
//  ViewController.m
//  AllTheSwitches
//
//  Created by Efrain Ayllon on 6/20/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UISwitch *beginEditing;
@property (nonatomic, weak) IBOutlet UISwitch *endEditing;
@property (nonatomic, weak) IBOutlet UISwitch *characterRange;
@property (nonatomic, weak) IBOutlet UISwitch *shouldClear;
@property (nonatomic, weak) IBOutlet UISwitch *shouldReturn;
@property (nonatomic, weak) IBOutlet UITextField *textField;

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




- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    
    UISwitch *mySwitch = (self.beginEditing);
    if ([mySwitch isOn]) {
        NSLog(@"Begin Editing!");
        return TRUE;
    }
    
    
    [textField resignFirstResponder];
    return YES;
    
    
}


- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    
    UISwitch *mySwitch = (self.endEditing);
    if ([mySwitch isOn]) {
        NSLog(@"End Editing!");
        return TRUE;
    }
    
    
    [textField resignFirstResponder];
    return YES;
    
}

- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string{
    
    UISwitch *mySwitch = (self.characterRange);
    if ([mySwitch isOn]) {
        NSLog(@"Change Characters?");
        return TRUE;
    }
    
    
    [textField resignFirstResponder];
    return YES;
    
    
    
}


- (BOOL)textFieldShouldClear:(UITextField *)textField{
    
    
    UISwitch *clearSwitch = (self.shouldClear);
    if ([clearSwitch isOn]) {
        NSLog(@"CLEAR!");
    }
    
    [textField resignFirstResponder];
    return YES;
    
}



-(BOOL) textFieldShouldReturn:(UISwitch *)textField{
    
    UISwitch *mySwitch = (self.shouldReturn);
    if ([mySwitch isOn]) {
        NSLog(@"RETURN!");
        return TRUE;
    }
    
    [textField resignFirstResponder];
    return YES;
}




@end
