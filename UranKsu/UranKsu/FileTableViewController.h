//
//  ViewController.h
//  UranKsu
//
//  Created by Roman Mykitchak on 1/31/17.
//  Copyright © 2017 Roman Mykitchak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FileModel.h"
#import "CustomTableViewCell.h"

@interface FileTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, CustomTableViewCellDeledate>

@property NSArray <FileModel *> *mainArray;

@end

