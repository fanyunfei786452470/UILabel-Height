//
//  AppDelegate.h
//  LabelHeightDemo
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 范云飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

