//
//  ClassResume.h
//  MyResume
//
//  Created by india on 20/08/16.
//  Copyright © 2016 Prajakta Kulkarni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCard.h"
@interface ClassResume : NSObject

//@property(nonatomic,strong)NSMutableArray *projects;//array of events
@property(nonatomic,strong)NSMutableArray *education;//array of events
@property(nonatomic,strong)HCard *contact_info;
@property(nonatomic,strong)NSMutableArray *experience;//array of events
@property(nonatomic,strong)NSMutableArray *skills;
@property(nonatomic,strong)NSMutableArray *affiliations;
@property(nonatomic,strong)NSMutableArray *publications;
@property(nonatomic,strong)NSString *summary;

@end
