//
//  SetGameModel.swift
//  SetGame
//
//  Created by Zheen Suseyi on 1/21/25.
//

import Foundation
struct SetGameModel {
    private(set) var cards: Array<Card>
    private(set) var score: Int = 0
    enum CardShape: CaseIterable {
        case Rectangle, Circle, Ellipse
    }
    
    enum CardColor: CaseIterable {
        case red, green, blue
    }

    init() {
        // Loop through all combinations of the attributes
        cards = []
        for shapeIndex in CardShape.allCases {
            for colorIndex in CardColor.allCases {
                for numberOfShapesIndex in 1...3 {
                    for shadingIndex in 1...3 {
                        // Create a new card for each combination of attributes
                        let card = Card(shape: shapeIndex, color: colorIndex, numberOfShapes: numberOfShapesIndex, shading: shadingIndex)
                        cards.append(card)
                    }
                }
            }
        }
        cards.shuffle()
        print(cards)  // Print all the cards for debugging
    }
    struct Card {
        var isMatched = false
        var isSelected = false
        var shape: CardShape
        var color: CardColor
        var numberOfShapes: Int
        var shading: Int
        init(shape: CardShape, color: CardColor, numberOfShapes: Int, shading: Int) {
            self.shape = shape
            self.color = color
            self.numberOfShapes = numberOfShapes
            self.shading = shading
        }
    }
}

