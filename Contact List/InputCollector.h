//
//  InputCollector.h
//  Contact List
//
//  Created by Aaron Chong on 1/21/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

- (NSString *) inputForPrompt: (NSString *)promptString;

@end
