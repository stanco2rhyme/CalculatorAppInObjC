//
//  ViewController.h
//  ObjectiveCProject
//
//  Created by Stanley Ejechi on 4/22/19.
//  Copyright © 2019 MobileConsultingSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, weak, readwrite) NSString *someString;

-(char) returnOtherString;

@end

