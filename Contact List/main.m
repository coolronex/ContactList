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
        
        ContactList *contactList = [[ContactList alloc] init];
        
        while (YES) {
            
            InputCollector *inputCollector = [[InputCollector alloc] init];
            
            NSString *input = [inputCollector inputForPrompt:@"Input 'new' to create new contact list. Input 'quit' to exit application. Input 'show' to show contact list"];
            NSString *userMenuInput = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([[userMenuInput lowercaseString] isEqualToString:@"new"]) {
                // create a new contact
                InputCollector *contactInfo = [[InputCollector alloc] init];
                
                Contact *newContact = [[Contact alloc] initWithName:[contactInfo inputForPrompt:@"New Contact Name: "]
                                                              email:[contactInfo inputForPrompt:@"New Contact Email: "]];
                
                [contactList addContact:newContact];
                
            } else if ([[userMenuInput lowercaseString] isEqualToString:@"show"]) {
                
                [contactList showContactList];
                
            } else if ([[userMenuInput lowercaseString] isEqualToString:@"quit"]) {
                
                return 0;
                
            } else {
                NSLog(@"Input not recognized");
            }
        }
        return 0;
    }
}

