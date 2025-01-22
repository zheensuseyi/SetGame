//
//  SetGameViewModel.swift
//  SetGame
//
//  Created by Zheen Suseyi on 1/21/25.
//

import SwiftUI

class SetGameViewModel: ObservableObject {
    @Published private(set) var gameModel: SetGameModel = SetGameModel()
    
    var cards: [Card] {
        return gameModel.cards
    }
    var score: Int {
        return gameModel.score
    }
   /* @Published private var cardShape: any Shape
    @Published private var cardNumberOfShapes: Int
    @Published private var cardShading: Double
    @Published private var cardColor: Color
    init(cardShape: any Shape, cardNumberOfShapes: Int, cardShading: Double, cardColor: Color) {
        self.cardShape = cardShape
        self.cardNumberOfShapes = cardNumberOfShapes
        self.cardShading = cardShading
        self.cardColor = cardColor
    }*/
    
 /*   func cardShapeChanger(Shape num: Int) -> any Shape {
        switch num{
        case 1:
            return Rectangle()
        case 2:
            return Circle()
        case 3:
            return Ellipse()
        default:
            return Ellipse()
        }
    }
    func cardShadingChanger(Shade num: Int) -> Double {
        switch num {
        case 1:
            return 0.1
        case 2:
            return 0.5
        case 3:
            return 0.9
        default:
            return 1.0
        }
    }
    func cardColorChanger(Color num: Int) -> Color {
        switch num {
            case 1:
                return Color(.red)
            case 2:
                return Color(.green)
            case 3:
                return Color(.blue)
            default:
                return Color(.gray)
        }
     }
    
*/
}



