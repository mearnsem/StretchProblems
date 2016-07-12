//
//  ViewController.m
//  FizzBuzzObjC
//
//  Created by Emily Mearns on 7/11/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self fizzBuzz:100];
}

- (void)fizzBuzz:(int)number {
    
    for (int i = 0; i <= number; i++) {
        if (i % 3 == 0 && i % 5 == 0) {
            NSLog(@"DevMtn");
        }
        else if (i % 3 == 0) {
            NSLog(@"Dev");
        }
        else if (i % 5 == 0) {
            NSLog(@"Mtn");
        }
        else {
            NSLog(@"%d", i);
        }
    }
    
}

@end
