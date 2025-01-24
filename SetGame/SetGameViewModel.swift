//
//  SetGameViewModel.swift
//  SetGame
//
//  Created by Zheen Suseyi on 1/21/25.
//

import SwiftUI

class SetGameViewModel: ObservableObject {
    enum CardShape: CaseIterable {
        case rectangle, circle, ellipse

        var shape: any Shape {
            switch self {
            case .rectangle:
                return Rectangle()
            case .circle:
                return Circle()
            case .ellipse:
                return Ellipse()
            }
        }
    }

    enum CardColor: CaseIterable {
        case red, blue, green

        var color: Color {
            switch self {
            case .red:
                return .red
            case .blue:
                return .blue
            case .green:
                return .green
            }
        }
    }
    // Initializer
    var cards: [CardTheme] {
        var newCards: [CardTheme] = []

        for shape in CardShape.allCases {
            for color in CardColor.allCases {
                for numberOfShapes in 1...3 {
                    for shading in 1...3 {
                        // Use `shape.shape` to access the actual Shape instance
                        let card = CardTheme(
                            shape: shape.shape,
                            color: color.color,
                            numberOfShapes: numberOfShapes,
                            shading: shading
                        )
                        newCards.append(card)
                    }
                }
            }
        }
        return newCards
    }
    private static func createSetGame(_ cards: [CardTheme]) -> SetGameModel<Any> {
        return SetGameModel {
            if cards.indices.contains($0) {
                return $0
            }
            else {
                return "⁉️"
            }
        }
    }
    @Published var model: SetGameModel<Any> = SetGameViewModel.createSetGame(cards)

}


struct CardTheme {
    var shape: any Shape
    var color: Color
    var numberOfShapes: Int
    var shading: Int
    init(shape: any Shape, color: Color, numberOfShapes: Int, shading: Int) {
        self.shape = shape
        self.color = color
        self.numberOfShapes = numberOfShapes
        self.shading = shading
    }
}
