//
//  ContentViewModel.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    static let `default` = ContentViewModel()

    @Published private(set) var showDetails: Bool = false
    @Published private(set) var selectedItem: ItemModel?
    @Published private(set) var items: [ItemModel] = ItemModel.mocks
    @Published var categories: [CategoryModel] = CategoryModel.mocks
    @Published var filteredItems: [ItemModel] = []
    @Published var selectedCategory: CategoryModel? {
        didSet {
            if !inputSearch.isEmpty {
                inputSearch.removeAll()
            }
            filteredItems = selectedCategory == nil ? items : items.filter { $0.categoryId == selectedCategory!.id }
        }
    }
    @Published var inputSearch: String = "" {
        didSet {
            if selectedCategory != nil {
                selectedCategory = nil
            }
            filteredItems = inputSearch.isEmpty ? items : items.filter { $0.name.lowercased().contains(inputSearch.lowercased()) }
        }
    }
    
    init() {}
    
    func onViewDidLoad(_ proxy: GeometryProxy) {
        filteredItems = items
    }
    
    func openDetails(for item: ItemModel) {
        selectedItem = item
        showDetails = true
    }
    
    func closeDetails() {
        showDetails = false
        selectedItem = nil
    }
}
