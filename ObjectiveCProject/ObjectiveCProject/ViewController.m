//
//  ViewController.m
//  ObjectiveCProject
//
//  Created by Stanley Ejechi on 4/22/19.
//  Copyright © 2019 MobileConsultingSolutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.someString = @"hello world 2";
    NSLog(@"%@", self.someString);
}



- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:true];
    NSLog(@"%@1234", self.someString);

}
-(int)returnInt {
    return 1;
}

-(NSString *) returnString {
   
    return @"hello world";
}

-(char) returnOtherString {
    return "hello world";
}

@end
