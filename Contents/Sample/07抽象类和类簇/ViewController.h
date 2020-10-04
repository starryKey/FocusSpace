//
//  ViewController.h
//  07抽象类和类簇
//
//  Created by Li_JinLin on 2020/9/27.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol testProtocol
@optional
- (void)run;
@required
- (void)play;
@end

@interface ViewController : UIViewController<testProtocol>


@end

