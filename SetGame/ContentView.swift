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
            ScrollView {
                Text("\(viewModel.cards)")
            }
            .padding()
        }
        Spacer()
       // .padding()
    }
}

#Preview {
    ContentView(viewModel: SetGameViewModel())
}
