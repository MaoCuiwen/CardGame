//
//  MCWGame.h
//  CardGame
//
//  Created by Elvis's on 15-2-3.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCWPoker.h"

@interface MCWGame : NSObject
@property(strong,nonatomic)NSMutableArray * selectedCards;
-(id)initWithCount:(int)count andPoker:(MCWPoker*)poker;
@end
