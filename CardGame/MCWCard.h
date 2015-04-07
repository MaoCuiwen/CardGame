//
//  MCWCard.h
//  CardGame
//
//  Created by Elvis's on 15-2-3.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCWCard : NSObject
@property(copy,nonatomic)NSString * suit;
@property(copy,nonatomic)NSString * rank;
@property(copy,nonatomic,readonly)NSString * cardInfo;
@property(nonatomic,getter = isFaceUp)BOOL faceUp;
@property(nonatomic,getter = isMatched)BOOL matched;
-(id)initWithSuit:(NSString*)suit andRank:(NSString*)rank;
+(NSArray *)suits;
+(NSArray *)ranks;

@end
