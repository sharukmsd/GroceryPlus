//
//  BackgroundView.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import SwiftUI

struct BackgroundView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Image(.imageBackground)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .background(Color.white)
    }
}

extension View {
    func backgroundView() -> some View {
        self.modifier(BackgroundView())
    }
}
