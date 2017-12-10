//
//  Car.h
//  CarsCoreDataAD
//
//  Created by Administrator on 12/9/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface Car : NSManagedObject

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *year;

@end



