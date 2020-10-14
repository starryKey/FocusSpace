//
//  AppDelegate.h
//  iFocusTech
//
//  Created by iFocus on 2020/10/14.
//  Copyright © 2020 iFocus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

