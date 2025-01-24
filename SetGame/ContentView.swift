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
        ZStack {
           Rectangle()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .opacity(0.7)
            Rectangle()
                .imageScale(.small)
                 .foregroundColor(.green)
                 .opacity(0.7)
            Rectangle()
                .imageScale(.large)
                 .foregroundColor(.pink)
                 .opacity(0.7)
        }
        .padding()
    }
}
/*struct CardView: View {
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
}*/

#Preview {
    ContentView(viewModel: SetGameViewModel())
}
