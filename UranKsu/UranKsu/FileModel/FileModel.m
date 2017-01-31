//
//  FileModel.m
//  UranKsu
//
//  Created by Roman Mykitchak on 1/31/17.
//  Copyright © 2017 Roman Mykitchak. All rights reserved.
//

#import "FileModel.h"

@implementation FileModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.filename = [NSString stringWithFormat:@"%@", [[NSUUID UUID] UUIDString]];
        self.isFolder = @"folder";
        self.modDate = [NSDate date];
        
    }
    return self;
}

@end
