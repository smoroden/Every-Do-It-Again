//
//  AddToDoViewController.h
//  EveryDo
//
//  Created by Zach Smoroden on 2016-05-25.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CoreDataStack;

@interface AddToDoViewController : UIViewController

-(void)setUpStack:(CoreDataStack*)stack;

@end
