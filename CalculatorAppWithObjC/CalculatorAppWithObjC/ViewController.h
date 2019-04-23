//
//  ViewController.h
//  CalculatorAppWithObjC
//
//  Created by Stanley Ejechi on 4/22/19.
//  Copyright © 2019 MobileConsultingSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


- (IBAction)handleButtonPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;
- (IBAction)equalspressed:(id)sender;
- (IBAction)clearPressed:(id)sender;


@end

