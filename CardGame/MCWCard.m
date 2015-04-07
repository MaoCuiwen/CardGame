//
//  MCWCard.m
//  CardGame
//
//  Created by Elvis's on 15-2-3.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "MCWCard.h"
@interface MCWCard ()
@property(copy,nonatomic)NSString * cardInfo;
@end

@implementation MCWCard
-(id)initWithSuit:(NSString *)suit andRank:(NSString *)rank{
    if (self = [super init]) {
        self.suit = suit;
        self.rank = rank;
        self.faceUp = NO;
        self.matched = NO;
    }
    return self;
}

-(void)setSuit:(NSString *)suit{
    if ([[MCWCard suits] containsObject:suit] ) {
        _suit = suit;
    }
}
-(void)setRank:(NSString *)rank{
    if ([[MCWCard ranks] containsObject:rank] ) {
        _rank = rank;
    }
}

+(NSArray *)suits{
    return @[@"♥️",@"♠️",@"♣️",@"♦️"];
}

+(NSArray *)ranks{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K",];
}

-(NSString *)cardInfo{
    return [self.suit stringByAppendingString:self.rank];
}
@end
