//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by admin on 2024/1/31.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻","🎃","🕷️","😈","👻","🎃","🕷️","😈","👻","🎃","🕷️"]
    
    private static func createMemoryGame() -> MemorizeGame<String> {
        return MemorizeGame(numberOfPairsOfCards: 16){ pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }else{
                return "⁉️"
            }
        }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemorizeGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemorizeGame<String>.Card) {
        model.choose(card)
    }
}
