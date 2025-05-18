//
//  GroceryListView.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import SwiftUI
import asyncImage

struct GroceryListView: View {
    @ObservedObject var viewModel: ContentViewModel
    let namespace: Namespace.ID
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        GeometryReader { proxy in
            let cellWidth = (proxy.size.width / 2) - 24
            VStack {
                HStack {
                    Text("Grocery Plus")
                        .font(.gp(.titleLarge))
                    
                    Spacer()
                    
                    Image(systemName: "bell")
                        .imageScale(.large)
                        .font(.headline)
                }
                .foregroundStyle(.gpText)
                .padding(.horizontal)
                .padding(.vertical, 8)
                
                ScrollView {
                    
                    Button {} label: {
                        HStack {
                            Image(systemName: "location")
                                .imageScale(.large)
                                .font(.headline)
                                .foregroundStyle(.white)
                                .frame(width: 45, height: 45)
                                .background(
                                    Circle().fill(Color.gpPrimary)
                                )
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Your Location")
                                .font(.gp(.bodySmall))
                                .foregroundStyle(Color.gpText.opacity(0.8))
                            Text("32 Llanberis Close, Tonteg, CF38 1HR")
                                .font(.gp(.headlineMedium))
                                .foregroundStyle(Color.gpText)
                                .lineLimit(1)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Image(systemName: "chevron.right")
                            .imageScale(.large)
                            .foregroundStyle(Color.gpText)
                            .font(.headline)
                    }
                    .padding(.horizontal)
                    
                    // search bar
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.medium)
                            .foregroundStyle(.gpText)
                            .font(.headline)
                        
                        TextField("Search...", text: $viewModel.inputSearch)
                            .foregroundStyle(.gpText)
                            .font(.gp(.body))
                    }
                    .padding(.horizontal)
                    .frame(height: 52)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gpBackgroundSecondary)
                    )
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    
                    // categories
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.categories) { category in
                                let isSelected = viewModel.selectedCategory?.id == category.id
                                Button {
                                    if isSelected {
                                        viewModel.selectedCategory = nil
                                    } else {
                                        viewModel.selectedCategory = category
                                    }
                                } label: {
                                    Text(category.name)
                                        .foregroundStyle(isSelected ? Color.white : Color.gpText)
                                        .font(.gp(.headlineMedium))
                                        .padding(.horizontal, 8)
                                        .padding(.vertical, 4)
                                        .background(
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(isSelected ? Color.gpPrimary : Color.gpBackgroundSecondary)
                                        )
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 8)
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(viewModel.filteredItems) { item in
                            Button {
                                withAnimation(.bouncy) {
                                    viewModel.openDetails(for: item)
                                }
                            } label: {
                                ItemCellView(
                                    item: item,
                                    namespace: namespace,
                                    width: cellWidth
                                ) {
                                    
                                }
                                .frame(width: cellWidth)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .scaleEffect(viewModel.showDetails ? 1.3 : 1)
            .modifier(SlideupImageEffect())
        }
    }
}
