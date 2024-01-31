//
//  MemorizeGame.swift
//  Memorize
//
//  Created by admin on 2024/1/31.
//

import Foundation

struct MemorizeGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched:Bool
        var content: CardContent
    }
}
