//
//  AddCarViewController.h
//  CarsCoreDataAD
//
//  Created by Administrator on 12/9/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootTableViewController.h"

@protocol AddCarControllerDelegate;

//@interface AddCarViewController : UIViewController
//@interface AddCarViewController : RootTableViewController
@interface AddCarViewController: UITableViewController

@property (nonatomic, weak) id <AddCarControllerDelegate> delegate;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end

@protocol AddCarControllerDelegate
- (void)addViewController:(AddCarViewController *)controller didFinishWithSave:(BOOL)save;

@end
