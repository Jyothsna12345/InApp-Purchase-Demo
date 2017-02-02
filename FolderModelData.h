//
//  FolderModelData.h
//  VNote
//
//  Created by Purushottam Kumar on 08/01/16.
//  Copyright © 2016 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FolderModelData : NSObject
@property(strong,nonatomic)NSString *objectId;
@property(strong,nonatomic)NSString *titleName;
@property(strong,nonatomic)NSString *textName;
@property(strong,nonatomic)UIImage *imageName;

@property(strong,nonatomic)NSMutableArray *imageNameArray;


@property(strong,nonatomic)NSMutableArray *allFiles;

@end
