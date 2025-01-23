//
//  SetGameViewModel.swift
//  SetGame
//
//  Created by Zheen Suseyi on 1/21/25.
//

import SwiftUI

class SetGameViewModel: ObservableObject {
    @Published private var model: SetGameModel = SetGameModel()
    var cards: Array<SetGameModel.Card> {
        return model.cards
    }
    var realArray: Array<ActualCard> {
        cards.map { card in
            var realCard = ActualCard(shape: Rectangle(), color: .red, numberOfShapes: card.numberOfShapes, shading: card.shading)
            switch card.shape {
            case .Rectangle:
                realCard.shape = Rectangle()
            case .Circle:
                realCard.shape = Circle()
            case .Ellipse:
                realCard.shape = Ellipse()
            }
            switch card.color {
            case .red:
                realCard.color = .red
            case .green:
                realCard.color = .green
            case .blue:
                realCard.color = .blue
            }
            return realCard
        }
    }
    var initalPlayerCards: Array<ActualCard> {
        var playerCards: Array<ActualCard> = []
        for k in 0...0 {
            playerCards.append(realArray[k])
        }
        return playerCards
    }
}
struct ActualCard: Identifiable {
    var id: String = ""
    var isMatched = false
    var isSelected = false
    var shape: any Shape
    var color: Color
    var numberOfShapes: Int
    var shading: Int
    init(isMatched: Bool = false, isSelected: Bool = false, shape: any Shape, color: Color, numberOfShapes: Int, shading: Int) {
        self.isMatched = isMatched
        self.isSelected = isSelected
        self.shape = shape
        self.color = color
        self.numberOfShapes = numberOfShapes
        self.shading = shading
    }
}
