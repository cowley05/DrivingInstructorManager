//
//  ContactsTableViewController.h
//  DrivingInstructorManager
//
//  Created by Stephen Cowley on 30/12/2012.
//  Copyright (c) 2012 SCowley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactList.h"
#import "Contact.h"
#import "AddNewContactViewController.h"

@interface ContactsTableViewController : UITableViewController

@property AddNewContactViewController *addNewContactViewController;
@property Contact *addNewContactsContact;

-(IBAction)addContactClicked:(id)sender;

@end
