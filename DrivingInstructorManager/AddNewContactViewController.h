//
//  AddNewContactViewController.h
//  DrivingInstructorManager
//
//  Created by Stephen Cowley on 01/01/2013.
//  Copyright (c) 2013 SCowley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@interface AddNewContactViewController : UIViewController

@property Contact *contact;
@property (weak, nonatomic) IBOutlet UITextField *forename;
@property (weak, nonatomic) IBOutlet UITextField *surname;
@property (weak, nonatomic) IBOutlet UITextField *number;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *houseNumber;
@property (weak, nonatomic) IBOutlet UITextField *address1;
@property (weak, nonatomic) IBOutlet UITextField *address2;
@property (weak, nonatomic) IBOutlet UITextField *town;
@property (weak, nonatomic) IBOutlet UITextField *postcode;

-(IBAction)addContact:(id)sender;

@end
