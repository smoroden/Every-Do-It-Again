//
//  ToDo+CoreDataProperties.h
//  EveryDo
//
//  Created by Zach Smoroden on 2016-05-25.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *detail;
@property (nonatomic) int64_t priority;
@property (nonatomic) BOOL isCompleted;

@end

NS_ASSUME_NONNULL_END
