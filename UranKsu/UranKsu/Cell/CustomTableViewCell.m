//
//  CustomTableViewCell.m
//  UranKsu
//
//  Created by Roman Mykitchak on 1/31/17.
//  Copyright © 2017 Roman Mykitchak. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setItem:(FileModel *)item {
    self.filename.text = item.filename;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"MMM dd, yyyy"];
    self.dateModified.text = [NSString stringWithFormat:@"modified %@", [df stringFromDate:item.modDate]];
    if ([item.isFolder isEqualToString:@"folder"]) {
        self.icon.image = [UIImage imageNamed:@"folder"];
        [self presentFolderIndicators:NO];
    } else {
        [self presentFolderIndicators:YES];
        switch (item.fileType) {
            case image:
                self.icon.image = [UIImage imageNamed:@"image"];
                break;
                
            default:
                self.icon.image = [UIImage imageNamed:@"file"];
                break;
        }
    }
    
    if (item.isOrange && item.isBlue) {
        self.left.backgroundColor = [UIColor orangeColor];
        self.leftBottom.backgroundColor = [UIColor blueColor];
    } else if (item.isOrange) {
        self.left.backgroundColor = [UIColor orangeColor];
        self.leftBottom.backgroundColor = [UIColor orangeColor];
    } else if (item.isBlue) {
        self.left.backgroundColor = [UIColor blueColor];
        self.leftBottom.backgroundColor = [UIColor blueColor];
    } else {
        self.left.backgroundColor = [UIColor whiteColor];
        self.leftBottom.backgroundColor = [UIColor whiteColor];
    }
}

- (void)presentFolderIndicators:(BOOL)present {
    for (UIView *v in self.swipeIndicators) {
        v.hidden = present;
    }
}

- (IBAction)favorite:(id)sender {
    [self.delegate favoriteCell:self];
}
- (IBAction)infinite:(id)sender {
    [self.delegate infinityCell:self];
}
- (IBAction)del:(id)sender {
    [self.delegate deleteCell:self];
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    NSLog(@"Swipe right");
    self.mainView.frame = CGRectMake(0,
                                     self.mainView.frame.origin.y,
                                     self.mainView.frame.size.width,
                                     self.mainView.frame.size.height);
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    NSLog(@"Swipe left");
    self.mainView.frame = CGRectMake(-(self.mainView.frame.size.width-self.favouriteButton.frame.origin.x),
                                     self.mainView.frame.origin.y,
                                     self.mainView.frame.size.width,
                                     self.mainView.frame.size.height);
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    NSLog(@"Swipe Should Begin");
    return YES;
}

@end
