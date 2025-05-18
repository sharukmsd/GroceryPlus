//
//  ItemCellView.swift
//  GroceryPlus
//
//  Created by Muhammad on 18/05/2025.
//

import SwiftUI
import asyncImage

struct ItemCellView: View {
    
    let item: ItemModel
    let namespace: Namespace.ID
    let width: CGFloat
    let onAddToCart: (() -> ())
    
    var body: some View {
        VStack {
            CAsyncImage(urlString: item.images.first ?? "") { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: 135)
            } placeholder: {
                Color.gpBackgroundSecondary
            }
            .frame(height: 135)
            .cornerRadius(8)
            .matchedGeometryEffect(
                id: "\(item.id).image",
                in: namespace
            )
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.gp(.headlineMedium))
                    .foregroundStyle(Color.gpText)
                    .lineLimit(2)
                HStack {
                    Text("\(item.price) PKR")
                        .font(.gp(.headlineMedium))
                        .foregroundStyle(Color.gpText)
                    if let discountedPrice = item.discountedPrice {
                        Text("\(discountedPrice) PKR")
                            .font(.gp(.body))
                            .foregroundStyle(Color.gpText.opacity(0.8))
                            .strikethrough()
                    }
                }
                
                Button {
                    onAddToCart()
                } label: {
                    HStack {
                        Image(systemName: "cart.badge.plus")
                            .imageScale(.medium)
                            .font(.headline)
                            .foregroundStyle(Color.white)
                        Text("Add to Cart")
                            .font(.gp(.headlineMedium))
                            .foregroundStyle(Color.white)
                    }
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gpPrimary)
                )
            }
        }
    }
}
