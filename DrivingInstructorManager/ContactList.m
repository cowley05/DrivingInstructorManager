//
//  ContactList.m
//  DrivingInstructorManager
//
//  Created by Stephen Cowley on 30/12/2012.
//  Copyright (c) 2012 SCowley. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList{
    NSMutableArray *contacts;
}

-(id)init{
    contacts = [[NSMutableArray alloc] init];
    return self;
}

-(BOOL)addNewContact:(Contact *)contact{
    if([self checkValidContact:contact]){
        [contacts addObject:contact];
        [self reloadContacts];
        return true;
    }
    return false;
}

-(BOOL)checkValidContact:(Contact *)contact{
    if (contact.forename == nil || contact.number == nil || contact.forename == @"" || contact.number == @"") {
        return false;
    }
    return true;
}

-(BOOL)deleteContactWithForename:(NSString *)forename withNumber:(NSString *)number{
#warning need to finish this delete method
    return false;
}

-(NSArray *)getContacts{
    return [[NSArray alloc] initWithArray:contacts];
}

-(void)reloadContacts{
#warning need to reload the contacts
}

@end
