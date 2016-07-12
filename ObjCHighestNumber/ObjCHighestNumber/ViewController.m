//
//  ViewController.m
//  ObjCHighestNumber
//
//  Created by Emily Mearns on 7/12/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self highestNumber];
}

- (NSNumber *)highestNumber {
    
    NSArray *intArray = @[@2, @9, @108, @54, @32];
    NSNumber *x = @0;
    
    for (NSNumber *n in intArray) {
        if (n > x) {
            x = n;
        }
    }
    NSLog(@"%@", x);
    return x;
    
}

@end
