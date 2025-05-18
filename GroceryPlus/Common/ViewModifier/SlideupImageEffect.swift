//
//  SlideupImageEffect.swift
//  GroceryPlus
//
//  Created by Muhammad on 08/03/2025.
//

import SwiftUI

struct SlideupImageEffect: ViewModifier {
    
    @State private var offsetYContent: CGFloat = 0
    @State private var offsetY: CGFloat = 0
    
    func body(content: Content) -> some View {
        GeometryReader { proxy in
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: offsetYContent)
                .opacity(offsetYContent == 0 ? 1 : 0)
                .overlay {
                    ZStack {
                        Image(.iconBasketFull)
                            .offset(y: offsetY)
                            .opacity(offsetY == 0 ? 1 : 0)
                            .scaleEffect(offsetY == 0 ? 1 : 0.7)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .onViewDidLoad {
                    offsetYContent = proxy.size.height / 2
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation(.easeInOut(duration: 0.35)) {
                            self.offsetY = -(proxy.size.height / 2)
                            self.offsetYContent = 0
                        }
                    }

                }
        }
    }
}

