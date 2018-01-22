//
//  main.m
//  Contact List
//
//  Created by Aaron Chong on 1/21/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        NSString *input = [inputCollector inputForPrompt:@"Input 'new' to create new contact list. Input 'quit' to exit application."];
        NSString *userMenuInput = [input stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n,"]];
    
    if ([[userMenuInput lowercaseString] isEqualToString:@"new"]) {
        // create a new contact
        
        InputCollector *contactInfo = [[InputCollector alloc] init];
        
        Contact *newContact = [[Contact alloc] initWithName:[contactInfo inputForPrompt:@"Name: "]
                                                      email:[contactInfo inputForPrompt:@"Email: "]];
        
        NSLog(@"New contact name input: %@. New contact email input: %@", newContact.name, newContact.email);
        
        //put new contact in array
        ContactList *contactList = [[ContactList alloc] init];
        [contactList.contactArray addObject:newContact];
        
    }
        return 0;
    }
}
