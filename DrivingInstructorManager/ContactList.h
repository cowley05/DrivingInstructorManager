//
//  ContactList.h
//  DrivingInstructorManager
//
//  Created by Stephen Cowley on 30/12/2012.
//  Copyright (c) 2012 SCowley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

-(BOOL) addNewContact:(Contact *) contact;
-(BOOL) deleteContactWithForename:(NSString *) forename withNumber:(NSString *) number;
-(NSArray *)getContacts;

@end
