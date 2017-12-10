//
//  DetailViewController.h
//  CarsCoreDataAD
//
//  Created by Administrator on 12/9/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Car;

@interface DetailViewController : UITableViewController

@property (nonatomic, strong) Car *car;

@end

@interface DetailViewController (Private)

- (void)setUpUndoManager;
- (void)cleanUpUndoManager;

@end
