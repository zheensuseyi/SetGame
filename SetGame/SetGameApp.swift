//
//  SetGameApp.swift
//  SetGame
//
//  Created by Zheen Suseyi on 1/21/25.
//

import SwiftUI

@main
struct SetGameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: SetGameViewModel())
        }
    }
}
