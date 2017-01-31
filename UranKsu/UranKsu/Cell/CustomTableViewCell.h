//
//  CustomTableViewCell.h
//  UranKsu
//
//  Created by Roman Mykitchak on 1/31/17.
//  Copyright © 2017 Roman Mykitchak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FileModel.h"
@class CustomTableViewCell;

@protocol CustomTableViewCellDeledate
@required
- (void)favoriteCell:(CustomTableViewCell *)cell;
- (void)infinityCell:(CustomTableViewCell *)cell;
- (void)deleteCell:(CustomTableViewCell *)cell;

@end

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic) FileModel *item;
@property (weak, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UIButton *favouriteButton;
@property id <CustomTableViewCellDeledate> delegate;
@property UISwipeGestureRecognizer *swipe;
@property UISwipeGestureRecognizer *swipeRight;
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UIView *leftBottom;
@property (weak, nonatomic) IBOutlet UIView *left;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *swipeIndicators;
@property (weak, nonatomic) IBOutlet UILabel *filename;
@property (weak, nonatomic) IBOutlet UILabel *dateModified;

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;

@end
