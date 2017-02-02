//
//  AppPurchaseProduct.m
//  VNote
//
//  Created by vmoksha mobility on 9/19/16.
//  Copyright © 2016 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "AppPurchaseProduct.h"
#import "AppPurchaseProductProcess.h"
#import "AppPurchase.h"
#import <StoreKit/StoreKit.h>


@implementation AppPurchaseProduct

+ (AppPurchaseProduct *)sharedInstance
{
    static dispatch_once_t once;
    static AppPurchaseProduct * sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(id)init
{

    AppPurchaseProductProcess * productPurchaseAutoRenewable =[[AppPurchaseProductProcess alloc]initWithProductIdentifier:@"InAppPurchase_Project_Id_Auto_Renewable"];
    
   AppPurchaseProductProcess * productPurchaseNonAutoRenewable =[[AppPurchaseProductProcess alloc]initWithProductIdentifier:@"Com_Vmoksha_Biomag_6Months_Subscription"];
    
    AppPurchaseProductProcess * productPurchaseNonConsuable =[[AppPurchaseProductProcess alloc]initWithProductIdentifier:@"BioMagPractitioner_Advanced_6mth"];
    
    AppPurchaseProductProcess * productPurchaseConsuable =[[AppPurchaseProductProcess alloc]initWithProductIdentifier:@"Com_Vmoksha_Biomag_3Months_Subscription"];
    
    NSMutableDictionary * dictProduct =[@{productPurchaseAutoRenewable.productIdentifier:productPurchaseAutoRenewable,productPurchaseNonAutoRenewable.productIdentifier:productPurchaseNonAutoRenewable,productPurchaseNonConsuable.productIdentifier:productPurchaseNonConsuable,productPurchaseConsuable.productIdentifier:productPurchaseConsuable}mutableCopy];
    
    if ((self = [super initWithProducts:dictProduct]))
    {
        
    }
    return self;

}
@end

