//
//  MCWPoker.h
//  CardGame
//
//  Created by Elvis's on 15-2-3.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCWCard.h"

@interface MCWPoker : NSObject
@property(strong,nonatomic)NSMutableArray * cards;
-(id)initWithCount:(int)count;
@end
