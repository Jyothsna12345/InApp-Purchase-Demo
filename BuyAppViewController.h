//
//  BuyAppViewController.h
//  VNote
//
//  Created by vmoksha mobility on 9/21/16.
//  Copyright © 2016 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppPurchaseProductProcess;

@interface BuyAppViewController : UIViewController

@property (nonatomic, strong)AppPurchaseProductProcess *product;
-(void)FlashScreen;
-(void)goToContentVC;

@end
