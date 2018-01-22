//
//  ContactList.m
//  Contact List
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _contactArray = [[NSMutableArray alloc] init];
        
    }
    return self;
}

@end
