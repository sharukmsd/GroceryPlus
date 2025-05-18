//
//  GroceryPlusApp.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import SwiftUI

@main
struct GroceryPlusApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel())
                .preferredColorScheme(.light)
        }
    }
}
