//
//  Address.h
//  MyResume
//
//  Created by india on 22/08/16.
//  Copyright © 2016 Prajakta Kulkarni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Address : NSObject
@property (nonatomic, strong)NSString *post_office_box;
@property (nonatomic, strong)NSString *extended_address;
@property (nonatomic, strong)NSString *street_address;
@property (nonatomic, strong)NSString *locality;
@property (nonatomic, strong)NSString *region;
@property (nonatomic, strong)NSString *postal_code;
@property (nonatomic, strong)NSString *country_name;
@property (nonatomic, strong)NSString *type;
@property (nonatomic, strong)NSString *value;
@end
