//
//  ContentView.swift
//  SetGame
//
//  Created by Zheen Suseyi on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: SetGameViewModel
    var body: some View {
        VStack {
            Text("hi")
                .font(.largeTitle)
                .imageScale(.large)
                .fontWeight(.bold)
            cards
        }
        Spacer()
       // .padding()
    }
    @ViewBuilder
    private var cards: some View {
        AspectVGrid(viewModel: viewModel, items: viewModel.realArray, aspectRatio: aspectRatio) { card in
            CardView(card)
                .aspectRatio(aspectRatio, contentMode: .fit)
                .padding(4)
        }
    }
}
struct CardView: View {
    let card: ActualCard
    init(_ card: ActualCard) {
        self.card = card
    }
    var body: some View{
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack {
            Group {
                base
                    .fill(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(card.content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
            }
            base.fill()
        }
    }
}

#Preview {
    ContentView(viewModel: SetGameViewModel())
}
