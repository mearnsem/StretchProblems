//
//  ViewController.m
//  LongestWordObjC
//
//  Created by Emily Mearns on 6/29/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *longestWord = [self longestWordIn:@"This is the worst stretch problem"];
    NSLog(@"%@", longestWord); 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)longestWordIn:(NSString *)string {
    
    NSString *stringNoPunc = [[string componentsSeparatedByCharactersInSet:[NSCharacterSet punctuationCharacterSet]] componentsJoinedByString:@""];
    
    NSArray *array = [stringNoPunc componentsSeparatedByString:@" "];
    NSString *longestWord = @"";
    
    for (NSString *word in array) {
        if (word.length > longestWord.length) {
            longestWord = word;
        }
    }
    
    return longestWord;
    
    
}

@end
