//
//  EditingViewController.m
//  CarsCoreDataAD
//
//  Created by Administrator on 12/9/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import "EditingViewController.h"
#import "Car.h"

@interface EditingViewController ()

@property (nonatomic, weak) IBOutlet UITextField *textField;

@end


#pragma mark -

@implementation EditingViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    // Set the title to the user-visible name of the field.
    self.title = self.editedFieldName;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // Configure the user interface according to state.
    self.textField.hidden = NO;
    self.textField.text = [self.editedObject valueForKey:self.editedFieldKey];
    self.textField.placeholder = self.title;
    [self.textField becomeFirstResponder];
}

#pragma mark - Save and cancel operations

- (IBAction)save:(id)sender
{
    // Set the action name for the undo operation.
    NSUndoManager * undoManager = [[self.editedObject managedObjectContext] undoManager];
    [undoManager setActionName:[NSString stringWithFormat:@"%@", self.editedFieldName]];
    
    // Pass current value to the edited object, then pop.
    [self.editedObject setValue:self.textField.text forKey:self.editedFieldKey];
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (IBAction)cancel:(id)sender
{
    // Don't pass current value to the edited object, just pop.
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - Manage whether editing a date

- (void)setEditedFieldKey:(NSString *)editedFieldKey
{
    if (![_editedFieldKey isEqualToString:editedFieldKey]) {
        _editedFieldKey = editedFieldKey;
    }
}

@end
