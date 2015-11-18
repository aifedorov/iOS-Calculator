//
//  CalculatorModel.m
//  Calculator
//
//  Created by Александр on 18.11.15.
//  Copyright © 2015 Александр. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

- (CGFloat)performOperand:(CGFloat)operand
{
    CGFloat value = self.currentOperand;
    
    if ([self.operation isEqualToString:@"x"]) {
        value *= operand;
    }
    else if ([self.operation isEqualToString:@"/"]) {
        value /= operand;
    }
    else if ([self.operation isEqualToString:@"+"]) {
        value += operand;
    }
    else if ([self.operation isEqualToString:@"-"]) {
        value -= operand;
    }
    
    return value;
}

@end
