//
//  ViewController.m
//  ObjCReverseArray
//
//  Created by Emily Mearns on 7/13/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = [self arrayReversed:@[@"a", @"b", @"c"]];
    NSLog(@"%@", array);
    
}

- (NSArray *)arrayReversed:(NSArray *)fromArray {
    
    NSArray *reverse = [[fromArray reverseObjectEnumerator] allObjects];
    return reverse;
    
}

@end
