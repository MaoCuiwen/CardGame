//
//  MCWViewController.m
//  CardGame
//
//  Created by Elvis's on 15-2-3.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "MCWViewController.h"
#import "MCWGame.h"

@interface MCWViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;
@property(strong,nonatomic)MCWGame * game;
@property(strong,nonatomic)MCWPoker * poker;
@property (weak, nonatomic) IBOutlet UILabel *score;
@end

@implementation MCWViewController
-(MCWPoker *)poker{
    if (!_poker) {
        _poker = [[MCWPoker alloc] initWithCount:52];
    }
    return _poker;
}

-(MCWGame *)game{
    if (!_game) {
        _game = [[MCWGame alloc]initWithCount:self.buttons.count andPoker:self.poker];
    }
    return _game;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (IBAction)click:(id)sender {
    int num = [self.buttons indexOfObject:sender];
    MCWCard * tempCard = self.game.selectedCards[num];
    BOOL isFindEqualRank = NO;
    //先找大小相同的牌
    for (MCWCard * card in self.game.selectedCards) {
        tempCard.faceUp = YES;
        if (([card.rank isEqualToString: tempCard.rank]) && (!card.faceUp)) {
            int temp = [self.game.selectedCards indexOfObject:card];
            [self showCard:num andSender:sender];
            [self showCard:temp andSender:self.buttons[temp]];
            [self changeScore:4];
            isFindEqualRank = YES;
            break;
        }
    }
    //如果没有找到大小相同的牌，再进行花色判定
    if (!isFindEqualRank) {
        for (MCWCard * card in self.game.selectedCards) {
            tempCard.faceUp = YES;
             if (([card.suit isEqualToString: tempCard.suit])&& (!card.faceUp)) {
                int temp = [self.game.selectedCards indexOfObject:card];
                [self showCard:num andSender:sender];
                [self showCard:temp andSender:self.buttons[temp]];
                [self changeScore:1];
                break;
            }
        }
    }
}



-(void)showCard:(int)num andSender:(id)sender{
    MCWCard * card = self.game.selectedCards[num];
    UIButton * btn = (UIButton*)sender;
    [sender setTitle:card.cardInfo forState:UIControlStateNormal];
    [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
    btn.enabled = NO;
    card.faceUp = YES;
}

-(void)changeScore:(int)change{
    NSString * sco = [self.score.text substringFromIndex:6];
    int score = sco.intValue;
    self.score.text = [NSString stringWithFormat:@"score:%d",score+change];
}

@end
