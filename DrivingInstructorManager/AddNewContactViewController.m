//
//  AddNewContactViewController.m
//  DrivingInstructorManager
//
//  Created by Stephen Cowley on 01/01/2013.
//  Copyright (c) 2013 SCowley. All rights reserved.
//

#import "AddNewContactViewController.h"

@interface AddNewContactViewController ()

@end

@implementation AddNewContactViewController

@synthesize contact;
@synthesize forename, surname, number, email, houseNumber, address1, address2, town, postcode;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    contact = [[Contact alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(IBAction)addContact:(id)sender{
    //add details to the contact from the view
    if ([self checkValidContact]) {
        contact.forename = forename.text;
        contact.surname = surname.text;
        contact.number = number.text;
        contact.email = email.text;
        contact.houseNumber = houseNumber.text;
        contact.address1 = address1.text;
        contact.address2 = address2.text;
        contact.town = town.text;
        contact.postcode = postcode.text;
        
        //pop view controller
        [self.navigationController popViewControllerAnimated:YES];
        //in the poped controller access this contact and call addnew with it on view did apear?
    }
    else{
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Oops", @"") message:@"You must provide a forename and number" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        [alert show];
    }
}

-(BOOL)checkValidContact{
    if (forename.text == nil || number.text == nil || [forename.text isEqualToString:@""] || [number.text isEqualToString:@""]) {
        return false;
    }
    return true;
}

@end
