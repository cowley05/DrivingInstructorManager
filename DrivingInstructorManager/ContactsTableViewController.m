//
//  ContactsTableViewController.m
//  DrivingInstructorManager
//
//  Created by Stephen Cowley on 30/12/2012.
//  Copyright (c) 2012 SCowley. All rights reserved.
//

#import "ContactsTableViewController.h"

@interface ContactsTableViewController ()

@property ContactList *contactList;

@end

@implementation ContactsTableViewController

@synthesize contactList;
@synthesize addNewContactViewController;
@synthesize addNewContactsContact;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    contactList = [[ContactList alloc] init];
    addNewContactViewController = [[AddNewContactViewController alloc] init];
    addNewContactsContact = [[Contact alloc] init];
    
#if TARGET_IPHONE_SIMULATOR
    Contact *testContact = [[Contact alloc] init];
    [testContact setForename:@"Ste"];
    [testContact setSurname:@"Cowley"];
    [testContact setNumber:@"12345678910"];
    [contactList addNewContact:testContact];
#endif

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
}

-(void)viewDidAppear:(BOOL)animated{    
    //if the contact is equal to the contact in addnewc..then do nothing else add it to the list and reload table view
    if (addNewContactsContact != addNewContactViewController.contact) {
        //call add new contact
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"efwef", @"") message:@"efwrgwrqgqwrgwg" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[contactList getContacts] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Contact *contact = [[contactList getContacts] objectAtIndex:indexPath.row];
    NSString *contactName = [NSString stringWithFormat:@"%@ %@", contact.forename, contact.surname];
    cell.textLabel.text = contactName;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

-(IBAction)addContactClicked:(id)sender{
    addNewContactsContact = addNewContactViewController.contact;
    [self.navigationController pushViewController:addNewContactViewController animated:YES];
}

@end
