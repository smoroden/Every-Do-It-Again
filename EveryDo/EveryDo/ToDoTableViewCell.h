//
//  ToDoTableViewCell.h
//  EveryDo
//
//  Created by Zach Smoroden on 2016-05-25.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
