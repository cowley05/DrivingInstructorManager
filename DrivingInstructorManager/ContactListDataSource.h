//
//  ContactListDataSource.h
//  DrivingInstructorManager
//
//  Created by Stephen Cowley on 03/01/2013.
//  Copyright (c) 2013 SCowley. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

@protocol ContactListDataSource <NSObject>

-(NSInteger)contactsCount;
-(Contact *)contactAtIndex:(NSInteger)index;
-(void)deleteContactAtIndex:(NSInteger)index;

@end
