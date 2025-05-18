//
//  GroceryDetailsView.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import SwiftUI

struct GroceryDetailsView: View {
    @ObservedObject var viewModel: ContentViewModel
    let namespace: Namespace.ID
    
    var body: some View {
        VStack {
            if let selectedItem = viewModel.selectedItem {
                Rectangle()
                    .fill(Color(.systemGray))
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .matchedGeometryEffect(
                        id: "\(selectedItem.id).image",
                        in: namespace
                    )
                    .onTapGesture {
                        withAnimation(.bouncy) {
                            viewModel.closeDetails()
                        }
                    }
                
                ScrollView {
                    Text("\(selectedItem.name)")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundView()
    }
}
