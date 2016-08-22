//
//  Name.h
//  MyResume
//
//  Created by india on 22/08/16.
//  Copyright © 2016 Prajakta Kulkarni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Name : NSObject

@property(nonatomic, strong) NSString *honorific_prefix;
@property(nonatomic, strong) NSString *given_name;
@property(nonatomic, strong) NSString *additional_name;
@property(nonatomic, strong) NSString *family_name;
@property(nonatomic, strong) NSString *honorific_suffix;

@end
