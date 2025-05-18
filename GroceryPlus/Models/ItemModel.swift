//
//  File.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import Foundation

struct ItemModel: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var quantity: Int
}

extension ItemModel {
    static let mocks: [ItemModel] = [
        ItemModel(name: "Apple", quantity: 3),
        ItemModel(name: "Banana", quantity: 5),
        ItemModel(name: "Orange", quantity: 2),
        ItemModel(name: "Mango", quantity: 4),
        ItemModel(name: "Grapes", quantity: 1),
        ItemModel(name: "Pineapple", quantity: 2),
        ItemModel(name: "Strawberry", quantity: 3),
        ItemModel(name: "Blueberry", quantity: 4),
        ItemModel(name: "Cherry", quantity: 5),
        ItemModel(name: "Watermelon", quantity: 1),
        ItemModel(name: "Peach", quantity: 2),
        ItemModel(name: "Plum", quantity: 3),
        ItemModel(name: "Kiwi", quantity: 4),
        ItemModel(name: "Pomegranate", quantity: 5),
    ]
}
