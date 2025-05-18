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
    
    init() {}
    
    func onViewDidLoad(_ proxy: GeometryProxy) {}
    
    func openDetails(for item: ItemModel) {
        selectedItem = item
        showDetails = true
    }
    
    func closeDetails() {
        showDetails = false
        selectedItem = nil
    }
}
