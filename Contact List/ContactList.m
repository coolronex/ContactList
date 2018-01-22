//
//  ContactList.m
//  Contact List
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "ContactList.h"
@class Contact;

@implementation ContactList

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _contactArray = [[NSMutableArray alloc] init];
        
    }
    return self;
}

- (void) showContactList {
    
    if ([self.contactArray count] >= 1){
        
        for (Contact *contact in self.contactArray) {
            
            NSLog(@"Contact name: %@", contact.name);
            NSLog (@"Contact email: %@", contact.email);
        }
    } else {
        
        NSLog(@"No contacts in list");
    }
}

- (void)addContact:(Contact *)newContact {
    
    [self.contactArray addObject:newContact];
}

@end
