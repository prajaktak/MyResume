//
//  HCard.h
//  MyResume
//
//  Created by india on 20/08/16.
//  Copyright © 2016 Prajakta Kulkarni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Name.h"
#import "Address.h"

@interface HCard : NSObject

@property (nonatomic, strong)NSString *fn;
@property (nonatomic, strong)Name *n;
@property (nonatomic, strong)Address *adr;
@property (nonatomic, strong)NSString *nickname;
@property (nonatomic, strong)NSString *org;
@property (nonatomic, strong)NSData *photo;
@property (nonatomic, strong)NSURL *url;
@property (nonatomic, strong)NSString *email;
@property (nonatomic, strong)NSString *tel;
@property (nonatomic, strong)NSDate *bday;
@property (nonatomic, strong)NSString *catagory;
@property (nonatomic, strong)NSString *note;

@end
