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

@end
