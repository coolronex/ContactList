//
//  InputCollector.m
//  Contact List
//
//  Created by Aaron Chong on 1/21/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "InputCollector.h"
#import "Contact.h"

@implementation InputCollector

- (NSString *)inputForPrompt:(NSString *)promptString {

    NSLog(@"%@", promptString);
    
    char cString [255];
    fgets(cString, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:cString];

    return inputString;
}

@end
