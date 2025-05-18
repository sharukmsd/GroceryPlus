//
//  GroceryDetailsView.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import SwiftUI
import asyncImage

struct GroceryDetailsView: View {
    @ObservedObject var viewModel: ContentViewModel
    let namespace: Namespace.ID
    
    var body: some View {
        GeometryReader { proxy in
            
            let width = proxy.size.width
            
            VStack {
                if let selectedItem = viewModel.selectedItem {
                    VStack {
                        
                        // nav bar
                        HStack {
                            Button {
                                withAnimation(.bouncy) {
                                    viewModel.closeDetails()
                                }
                            } label: {
                                Image(systemName: "arrow.backward")
                                    .imageScale(.large)
                                    .foregroundStyle(Color.gpText)
                                    .font(.headline)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            
                            Text("Product Details")
                                .font(.gp(.headline))
                                .foregroundStyle(Color.gpText)
                            
                            Spacer()
                        }
                        
                        ScrollView {
                            
                            CAsyncImage(urlString: selectedItem.images.first ?? "") { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: width, height: 325)
                                    .clipShape(Rectangle())
                            } placeholder: {
                                Color.gpBackgroundSecondary
                            }
                            .frame(width: width, height: 325)
                            .matchedGeometryEffect(
                                id: "\(selectedItem.id).image",
                                in: namespace
                            )
                            
                            VStack(alignment: .leading) {
                                Text("\(selectedItem.name)")
                                    .font(.gp(.titleMedium))
                                    .foregroundStyle(.gpText)
                                
                                HStack {
                                    Text("\(selectedItem.quantity) left")
                                        .foregroundStyle(.gpText)
                                    Spacer()
                                    Text("PKR \(selectedItem.discountedPrice ?? selectedItem.price)")
                                        .foregroundStyle(.gpPrimary)
                                }
                                .font(.gp(.titleLarge))
                                .padding(.vertical, 8)
                                
                                Text(selectedItem.description)
                                    .multilineTextAlignment(.leading)
                                    .font(.gp(.body))
                                    .foregroundStyle(Color.gpText)
                                
                                Text("Related products")
                                    .font(.gp(.headline))
                                    .foregroundStyle(Color.gpText)
                                    .padding(.top)
                                
                                let rps = viewModel.items.filter({ $0.categoryId == selectedItem.categoryId }).prefix(3)
                                
                                
                                ForEach(rps) { product in
                                    ItemCellView(item: product)
                                }
                                
                            }
                            .padding(.horizontal)
                        }
                        
                        Button {
                            viewModel.addToCart(item: selectedItem)
                            withAnimation(.bouncy) {
                                viewModel.closeDetails()
                            }
                        } label: {
                            HStack {
                                Image(systemName: "cart.badge.plus")
                                    .imageScale(.medium)
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                                Text("Add to Cart")
                                    .font(.gp(.headline))
                                    .foregroundStyle(Color.white)
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: 48)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.gpPrimary)
                        )
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        
                    }
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundView()
    }
}
