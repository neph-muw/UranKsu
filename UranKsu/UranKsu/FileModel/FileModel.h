//
//  FileModel.h
//  UranKsu
//
//  Created by Roman Mykitchak on 1/31/17.
//  Copyright © 2017 Roman Mykitchak. All rights reserved.
//

#import <Foundation/Foundation.h>

enum FileType {
    image,
    pdf,
    movie,
    music,
    etc
};

@interface FileModel : NSObject

@property NSString *filename;
@property NSString *isFolder;
@property NSDate *modDate;
@property enum FileType fileType;
@property BOOL isOrange;
@property BOOL isBlue;

@end
