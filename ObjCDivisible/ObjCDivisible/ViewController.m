//
//  ViewController.m
//  ObjCDivisible
//
//  Created by Emily Mearns on 7/14/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self divisibleBy:@2 betweenOAnd:@12];
}

- (NSArray *)divisibleBy:(NSNumber *)x betweenOAnd:(NSNumber *)y {
    
    NSMutableArray *intArray = [NSMutableArray new];
    
    for (int num = 0; num <= y.intValue; num++) {
        if (num % x.intValue == 0) {
            [intArray addObject:[NSNumber numberWithInt:num]];
        }
    }
    NSLog(@"%@", intArray);
    return intArray;
    
}

@end
