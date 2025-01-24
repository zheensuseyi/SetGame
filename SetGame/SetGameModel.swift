//
//  SetGameModel.swift
//  SetGame
//
//  Created by Zheen Suseyi on 1/21/25.
//

import Foundation
struct SetGameModel<CardContent> {
    private(set) var cards: Array<Card>
    private(set) var score: Int = 0
    init(cardContentFactory: (Int) -> CardContent) {
        cards = []
        score = 0
        // loops through the pairs using cardContentFactory to generate the content for each pair
        // creates two card objects for each pair with unique ids
        for pairIndex in 0...8 {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
        }
        cards.shuffle()
    }
    struct Card {
        var isMatched = false
        var isSelected = false
        var content: CardContent
    }
}

