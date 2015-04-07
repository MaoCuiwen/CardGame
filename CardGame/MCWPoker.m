//
//  MCWPoker.m
//  CardGame
//
//  Created by Elvis's on 15-2-3.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "MCWPoker.h"

@implementation MCWPoker
-(id)initWithCount:(int)count{
    if (self = [super init]) {
        for (NSString * suit in [MCWCard suits]) {
            for (NSString * rank in [MCWCard ranks]) {
                MCWCard * card = [[MCWCard alloc] initWithSuit:suit andRank:rank];
                [self.cards addObject:card];
            }
        }
        
    }
    return self;
}

-(NSMutableArray *)cards{
    if (!_cards) {
        self.cards = [NSMutableArray array];
    }
    return _cards;
}
@end
