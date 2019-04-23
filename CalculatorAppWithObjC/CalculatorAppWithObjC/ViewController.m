//
//  ViewController.m
//  CalculatorAppWithObjC
//
//  Created by Stanley Ejechi on 4/22/19.
//  Copyright © 2019 MobileConsultingSolutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) BOOL typingNumber; //check if user is typing a number
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation; // plus or minus operation

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


}


- (IBAction)handleButtonPressed:(id)sender {
    
    NSString *number = [sender titleLabel].text;
    if (self.typingNumber)
    {
        self.resultLabel.text = [self.resultLabel.text stringByAppendingString:number];
    } else
    {
        self.resultLabel.text = number;
        self.typingNumber = YES;
    }
    
   
}

- (IBAction)operationPressed:(id)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.resultLabel.text intValue];
    self.operation = [sender currentTitle];
}

- (IBAction)equalspressed:(id)sender {
    
    self.typingNumber = NO;
    self.secondNumber = [self.resultLabel.text intValue];
    
    int result = 0;
    
    if ([self.operation isEqualToString:@"+"])
    {
        result = self.firstNumber + self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"-"])
    {
        result = self.firstNumber - self.secondNumber;
    } else if ([self.operation isEqualToString:@"*"])
    {
        result = self.firstNumber * self.secondNumber;
    } else if ([self.operation isEqualToString:@"/"])
    {
        result = self.firstNumber / self.secondNumber;
    }
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d", result];
}

- (IBAction)clearPressed:(id)sender {
    self.resultLabel.text = @"";
}


@end
