//
//  ViewController.m
//  Calculator
//
//  Created by Александр on 18.11.15.
//  Copyright © 2015 Александр. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onOperendPressed:(UIButton *)sender
{
    NSString * value = self.valueLabel.text;
    
    if ([value isEqualToString:@"0"]) {
        value = @"";
    }
    
    NSUInteger sizeLED = 18;
    
    if([value length] <= sizeLED ) {
        
        value = [value stringByAppendingString:sender.titleLabel.text];
    }
    
    self.valueLabel.text = value;
}
- (IBAction)onOperationPressed:(UIButton *)sender {
}
- (IBAction)onEqualPressed:(UIButton *)sender {
}
- (IBAction)onClearPressed:(UIButton *)sender {
    self.valueLabel.text = @"0";
}

@end
