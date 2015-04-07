//
//  MCWGame.m
//  CardGame
//
//  Created by Elvis's on 15-2-3.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "MCWGame.h"

@implementation MCWGame
-(id)initWithCount:(int)count andPoker:(MCWPoker *)poker{
    if (self = [super init]) {
        for (int i = 0; i < count; i++) {
            unsigned int random = arc4random()%poker.cards.count;
            MCWCard * card = (MCWCard*)poker.cards[random];
            [self.selectedCards addObject:card];
            [poker.cards removeObject:card];
        }
    }
    return self;
}
-(NSMutableArray *)selectedCards{
    if (!_selectedCards) {
        _selectedCards = [NSMutableArray array];
    }
    return _selectedCards;
}
@end
