//
//  Contact.m
//  Contact List
//
//  Created by Aaron Chong on 1/21/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email {
    
    self = [super init];
    if (self) {
        
        _name = name;
        _email = email;
        
    }
    return self;
}

@end
