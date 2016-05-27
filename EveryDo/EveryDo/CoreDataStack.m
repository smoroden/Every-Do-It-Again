//
//  CoreDataStack.m
//  EveryDo
//
//  Created by Zach Smoroden on 2016-05-25.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "CoreDataStack.h"

@interface CoreDataStack ()

@property (nonatomic, strong) NSManagedObjectModel *mom;
@property (nonatomic, strong) NSPersistentStoreCoordinator *psc;

@end


@implementation CoreDataStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Set 1: set up the managed object model
        NSURL *momdURL = [[NSBundle mainBundle] URLForResource:@"EveryDo" withExtension:@"momd"];
        _mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:momdURL];
        
        // Step 2: set up the persistent store coordinator
        _psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:_mom];
        
        // Step 3: set up where this will be saved
        NSArray *docDirs = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documents = [docDirs firstObject];
        NSString *dbPath = [documents stringByAppendingPathComponent:@"database.sqlite"];
        NSURL *dbURL = [NSURL fileURLWithPath:dbPath];
        
        NSError *pscError = nil;
        
        if (![_psc addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:dbURL options:nil error:&pscError]) {
            NSLog(@"error adding persistant store %@", pscError);
            
            // report catastrophic error
        }
        
        // Step 4: set up the context
        _context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        [_context setPersistentStoreCoordinator:_psc];
        
    }
    return self;
}


-(void)save {
    NSError *error = nil;
    
    if (![self.context save:&error]) {
        NSLog(@"error saving context %@", error);
    }
}

@end
