//
//  CategoryModel.swift
//  GroceryPlus
//
//  Created by Muhammad on 18/05/2025.
//

import Foundation

struct CategoryModel: Identifiable, Hashable {
    let id: Int
    let name: String
    let image: String
}

extension CategoryModel {
    static let mocks: [CategoryModel] = [
        .init(id: 1, name: "Fruits & Vegetables", image: "cat_fruites_veg"),
        .init(id: 2, name: "Breakfast", image: "cat_breakfast"),
        .init(id: 3, name: "Beverages", image: "cat_beverages"),
        .init(id: 4, name: "Meat & Fish", image: "cat_meat"),
        .init(id: 5, name: "Snacks", image: "cat_snacks"),
        .init(id: 6, name: "Dairy", image: "cat_dairy"),
    ]
}
