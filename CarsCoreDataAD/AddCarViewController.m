//
//  AddCarViewController.m
//  CarsCoreDataAD
//
//  Created by Administrator on 12/9/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import "AddCarViewController.h"
#import "Car.h"

@interface AddCarViewController ()
@property (weak, nonatomic) IBOutlet UITextField *carMake;
@property (weak, nonatomic) IBOutlet UITextField *carModel;
@property (weak, nonatomic) IBOutlet UITextField *carYear;

@end

@implementation AddCarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Set up the undo manager and set editing state to YES.
    //[self setUpUndoManager];
    self.editing = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


//- (void)dealloc
//{
//    [self cleanUpUndoManager];
//}

- (IBAction)saveData:(UIButton *)sender {
    [self.delegate addViewController:self didFinishWithSave:YES];
}
- (IBAction)dismissKeyboard:(id)sender {
    [self resignFirstResponder];
}

@end
