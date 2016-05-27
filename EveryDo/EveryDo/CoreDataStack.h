//
//  CoreDataStack.h
//  EveryDo
//
//  Created by Zach Smoroden on 2016-05-25.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataStack : NSObject

@property (nonatomic, strong) NSManagedObjectContext *context;

-(void)save;

@end
