//
//  ViewController.m
//  Calculator
//
//  Created by Александр on 18.11.15.
//  Copyright © 2015 Александр. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorModel.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) CalculatorModel *model;

@property (nonatomic) BOOL waitNextOperand;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[CalculatorModel alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onOperendPressed:(UIButton *)sender
{
    NSString * value = self.valueLabel.text;
    
    if ([value isEqualToString:@"0"] || self.waitNextOperand) {
        value = @"";
        self.waitNextOperand = NO;
    }
    
    NSUInteger sizeLED = 18;
    
    if([value length] <= sizeLED ) {
        
        value = [value stringByAppendingString:sender.titleLabel.text];
    }
    
    self.valueLabel.text = value;
}

- (IBAction)onOperationPressed:(UIButton *)sender
{
    self.model.operation = sender.titleLabel.text;
    self.model.currentOperand = self.valueLabel.text.floatValue;
    
    self.waitNextOperand = YES;
}

- (IBAction)onClearPressed:(UIButton *)sender {
    self.valueLabel.text = @"0";
    self.model.operation = nil;
}

- (IBAction)onEqualPressed:(UIButton *)sender
{
    CGFloat value = [self.model performOperand:self.valueLabel.text.floatValue];
    
    self.valueLabel.text = [NSString stringWithFormat:@"%f", value];
    self.model.currentOperand = value;
}

@end
