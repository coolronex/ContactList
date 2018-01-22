//
//  Contact.h
//  Contact List
//
//  Created by Aaron Chong on 1/21/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic, strong) NSString *email;

-(instancetype)initWithName:(NSString *)name email:(NSString *)email;

@end
