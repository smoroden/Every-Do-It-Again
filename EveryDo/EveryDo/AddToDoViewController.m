//
//  AddToDoViewController.m
//  EveryDo
//
//  Created by Zach Smoroden on 2016-05-25.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "AddToDoViewController.h"
#import "CoreDataStack.h"

@interface AddToDoViewController ()

@property (nonatomic) CoreDataStack *stack;

@end

@implementation AddToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addToDoAndDismiss:)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addToDoAndDismiss:(UIButton *)sender {
    // add ToDo
    
    
    //dismiss
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)setUpStack:(CoreDataStack*)stack {
    if (_stack != stack) {
        _stack = stack;
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
