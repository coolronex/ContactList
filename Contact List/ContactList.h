//
//  ContactList.h
//  Contact List
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactArray;

- (void) showContactList;
- (void) addContact: (Contact *)newContact;

@end
