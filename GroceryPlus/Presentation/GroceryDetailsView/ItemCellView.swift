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
    
    var body: some View {
        HStack (alignment: .top) {
            CAsyncImage(urlString: item.images.first ?? "") { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 115, height: 121)
            } placeholder: {
                Color.gpBackgroundSecondary
            }
            .frame(width: 115, height: 121)
            .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.gp(.headline))
                    .foregroundStyle(Color.gpText)
                    .lineLimit(3)
                
                Text("\(item.price) PKR")
                    .font(.gp(.body))
                    .foregroundStyle(Color.gpPrimary)
                
                if let discountedPrice = item.discountedPrice {
                    Text("\(discountedPrice) PKR")
                        .font(.gp(.body))
                        .foregroundStyle(Color.gpText.opacity(0.8))
                        .strikethrough()
                }
            }
        }
    }
}
