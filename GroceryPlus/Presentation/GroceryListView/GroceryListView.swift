//
//  GroceryListView.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import SwiftUI

struct GroceryListView: View {
    @ObservedObject var viewModel: ContentViewModel
    let namespace: Namespace.ID
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        GeometryReader { proxy in
            let cellWidth = (proxy.size.width / 2) - 20
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(viewModel.items) { item in
                            Button {
                                withAnimation(.bouncy) {
                                    viewModel.openDetails(for: item)
                                }
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(.systemGray))
                                        .frame(height: cellWidth)
                                        .matchedGeometryEffect(
                                            id: "\(item.id).image",
                                            in: namespace
                                        )
                                    
                                    Text(item.name)
                                        .font(.headline)
                                }
                            }
                            .if(viewModel.showDetails) { view in
                                // The items needs to disappear when selected to make hero
                                // animation work. Otherwise SwiftUI will complain that multiple
                                // equal id's with isSource == true exists.
                                view.hidden()
                            }
                        }
                    }
                    .padding()
                }
            }
            .scaleEffect(viewModel.showDetails ? 1.3 : 1)
            .modifier(SlideupImageEffect())
        }
    }
}
