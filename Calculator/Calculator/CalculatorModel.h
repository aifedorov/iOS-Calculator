//
//  CalculatorModel.h
//  Calculator
//
//  Created by Александр on 18.11.15.
//  Copyright © 2015 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CalculatorModel : NSObject

@property (copy, nonatomic) NSString *operation;
@property (nonatomic) CGFloat currentOperand;

- (CGFloat)performOperand:(CGFloat)operand;

@end
