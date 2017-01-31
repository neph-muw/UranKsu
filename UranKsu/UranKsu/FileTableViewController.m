//
//  ViewController.m
//  UranKsu
//
//  Created by Roman Mykitchak on 1/31/17.
//  Copyright © 2017 Roman Mykitchak. All rights reserved.
//

#import "FileTableViewController.h"

@interface FileTableViewController ()

@end

@implementation FileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FileModel *modfe = [[FileModel alloc] init];
    FileModel *modfe0 = [[FileModel alloc] init];
    modfe0.isOrange = YES;
    FileModel *modfe1 = [[FileModel alloc] init];
    modfe1.isFolder = @"file";
    modfe1.fileType = image;
    FileModel *modfe2 = [[FileModel alloc] init];
    modfe2.isFolder = @"file";
    modfe2.isBlue = YES;
    modfe1.fileType = pdf;
    self.mainArray = @[modfe, modfe0, modfe1, modfe2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.mainArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    FileModel *item = self.mainArray[indexPath.row];
    cell.item = item;
    cell.delegate = self;
    //left
    cell.swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:cell action:@selector(swipeLeft:)];
    cell.swipe.direction = UISwipeGestureRecognizerDirectionLeft;
    cell.swipe.delegate = cell;
    [cell.mainView addGestureRecognizer:cell.swipe];
    //right
    cell.swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:cell action:@selector(swipeRight:)];
    cell.swipe.delegate = cell;
    [cell.mainView addGestureRecognizer:cell.swipe];
    return cell;
}

- (void)favoriteCell:(CustomTableViewCell *)cell {
    NSLog(@"%@", cell);
}
- (void)infinityCell:(CustomTableViewCell *)cell {
    NSLog(@"%@", cell);
}
- (void)deleteCell:(CustomTableViewCell *)cell {
    NSLog(@"%@", cell);
}


@end
