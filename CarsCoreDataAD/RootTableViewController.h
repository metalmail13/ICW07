//
//  RootTableViewController.h
//  CarsCoreDataAD
//
//  Created by Administrator on 12/9/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCarViewController.h"

//@protocol NSFetchedResultsControllerDelegate;

//@interface RootTableViewController : UITableViewController
@interface RootTableViewController : UITableViewController
<NSFetchedResultsControllerDelegate, AddCarControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end
