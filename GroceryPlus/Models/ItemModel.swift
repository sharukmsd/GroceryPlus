//
//  File.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import Foundation

struct ItemModel: Identifiable, Equatable {
    var id: String = UUID().uuidString
    var name: String
    var description: String
    var quantity: Int
    var price: Int
    var discountedPrice: Int?
    var images: [String]
    var categoryId: Int
}

extension ItemModel {
    static let mocks: [ItemModel] = [
        // Fruits & Vegetables (Category 1)
        ItemModel(name: "Fresh Red Apples", description: "Sweet and crispy red apples, perfect for snacking or baking. Rich in fiber and antioxidants.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?w=500",
            "https://images.unsplash.com/photo-1619546813926-a78fa6372cd2?w=500",
            "https://images.unsplash.com/photo-1619546813926-a78fa6372cd2?w=500"
        ], categoryId: 1),
        ItemModel(name: "Organic Bananas", description: "Naturally sweet organic bananas, rich in potassium and perfect for smoothies or snacking.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=500",
            "https://images.unsplash.com/photo-1603833665858-e61d17a86224?w=500",
            "https://images.unsplash.com/photo-1603833665858-e61d17a86224?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Spinach", description: "Nutrient-rich organic spinach, perfect for salads, smoothies, and cooking.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1576045057995-568f588f82fb?w=500",
            "https://images.unsplash.com/photo-1576045057995-568f588f82fb?w=500",
            "https://images.unsplash.com/photo-1576045057995-568f588f82fb?w=500"
        ], categoryId: 1),
        ItemModel(name: "Red Tomatoes", description: "Juicy red tomatoes, perfect for salads, sandwiches, and cooking.", quantity: 1, price: 179, discountedPrice: 159, images: [
            "https://images.unsplash.com/photo-1546094097-246e5fbd80a5?w=500",
            "https://images.unsplash.com/photo-1546094097-246e5fbd80a5?w=500",
            "https://images.unsplash.com/photo-1546094097-246e5fbd80a5?w=500"
        ], categoryId: 1),
        ItemModel(name: "Green Capsicum", description: "Fresh green capsicum, great for stir-fries, salads, and stuffing.", quantity: 1, price: 129, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1563565375-f3fdfdbefa83?w=500",
            "https://images.unsplash.com/photo-1563565375-f3fdfdbefa83?w=500",
            "https://images.unsplash.com/photo-1563565375-f3fdfdbefa83?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Carrots", description: "Sweet and crunchy carrots, rich in vitamin A and perfect for snacking or cooking.", quantity: 1, price: 159, discountedPrice: 139, images: [
            "https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?w=500",
            "https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?w=500",
            "https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Potatoes", description: "Versatile potatoes, perfect for boiling, baking, or frying.", quantity: 1, price: 189, discountedPrice: 169, images: [
            "https://images.unsplash.com/photo-1518977676601-b53f82aba655?w=500",
            "https://images.unsplash.com/photo-1518977676601-b53f82aba655?w=500",
            "https://images.unsplash.com/photo-1518977676601-b53f82aba655?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Onions", description: "Essential cooking ingredient, perfect for various dishes and recipes.", quantity: 1, price: 169, discountedPrice: 149, images: [
            "https://images.unsplash.com/photo-1508747703725-719777637510?w=500",
            "https://images.unsplash.com/photo-1508747703725-719777637510?w=500",
            "https://images.unsplash.com/photo-1508747703725-719777637510?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Garlic", description: "Aromatic garlic, essential for flavoring various dishes.", quantity: 1, price: 99, discountedPrice: 89, images: [
            "https://images.unsplash.com/photo-1587049352846-4a222e784d38?w=500",
            "https://images.unsplash.com/photo-1587049352846-4a222e784d38?w=500",
            "https://images.unsplash.com/photo-1587049352846-4a222e784d38?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Ginger", description: "Fresh ginger root, perfect for teas, cooking, and health benefits.", quantity: 1, price: 119, discountedPrice: 99, images: [
            "https://images.unsplash.com/photo-1595959183082-7b570b7e08e2?w=500",
            "https://images.unsplash.com/photo-1595959183082-7b570b7e08e2?w=500",
            "https://images.unsplash.com/photo-1595959183082-7b570b7e08e2?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Broccoli", description: "Nutrient-rich broccoli, perfect for steaming, roasting, or stir-fries.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1584270354949-c26b0d5b4a0c?w=500",
            "https://images.unsplash.com/photo-1584270354949-c26b0d5b4a0c?w=500",
            "https://images.unsplash.com/photo-1584270354949-c26b0d5b4a0c?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Cauliflower", description: "Versatile cauliflower, great for roasting, mashing, or making rice.", quantity: 1, price: 189, discountedPrice: 169, images: [
            "https://images.unsplash.com/photo-1610832958506-aa56368176cf?w=500",
            "https://images.unsplash.com/photo-1610832958506-aa56368176cf?w=500",
            "https://images.unsplash.com/photo-1610832958506-aa56368176cf?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Green Beans", description: "Crisp green beans, perfect for steaming, stir-frying, or salads.", quantity: 1, price: 169, discountedPrice: 149, images: [
            "https://images.unsplash.com/photo-1567375698348-5d9d5ae99de0?w=500",
            "https://images.unsplash.com/photo-1567375698348-5d9d5ae99de0?w=500",
            "https://images.unsplash.com/photo-1567375698348-5d9d5ae99de0?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Mushrooms", description: "Fresh button mushrooms, perfect for cooking, grilling, or salads.", quantity: 1, price: 179, discountedPrice: 159, images: [
            "https://images.unsplash.com/photo-1512595813138-344a9bae9b14?w=500",
            "https://images.unsplash.com/photo-1512595813138-344a9bae9b14?w=500",
            "https://images.unsplash.com/photo-1512595813138-344a9bae9b14?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Cucumber", description: "Crisp and refreshing cucumber, perfect for salads and snacking.", quantity: 1, price: 89, discountedPrice: 79, images: [
            "https://images.unsplash.com/photo-1604977042946-1eecc30f269e?w=500",
            "https://images.unsplash.com/photo-1604977042946-1eecc30f269e?w=500",
            "https://images.unsplash.com/photo-1604977042946-1eecc30f269e?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Lettuce", description: "Crisp lettuce, perfect for salads and sandwiches.", quantity: 1, price: 129, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500",
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500",
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Corn", description: "Sweet corn on the cob, perfect for grilling or boiling.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1601593768799-76c78e5d1e8a?w=500",
            "https://images.unsplash.com/photo-1601593768799-76c78e5d1e8a?w=500",
            "https://images.unsplash.com/photo-1601593768799-76c78e5d1e8a?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Green Peas", description: "Sweet green peas, perfect for cooking and adding to various dishes.", quantity: 1, price: 159, discountedPrice: 139, images: [
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500",
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500",
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Eggplant", description: "Versatile eggplant, perfect for grilling, roasting, or curries.", quantity: 1, price: 139, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1635340966666-36d74663cfb9?w=500",
            "https://images.unsplash.com/photo-1635340966666-36d74663cfb9?w=500",
            "https://images.unsplash.com/photo-1635340966666-36d74663cfb9?w=500"
        ], categoryId: 1),
        ItemModel(name: "Fresh Zucchini", description: "Fresh zucchini, perfect for grilling, roasting, or spiralizing.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500",
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500",
            "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=500"
        ], categoryId: 1),

        // Breakfast (Category 2)
        ItemModel(name: "Quaker Oats", description: "100% whole grain oats, perfect for a healthy breakfast.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500",
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500",
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500"
        ], categoryId: 2),
        ItemModel(name: "Kellogg's Corn Flakes", description: "Crispy corn flakes, perfect with milk for breakfast.", quantity: 1, price: 349, discountedPrice: 299, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Honey Nut Cheerios", description: "Sweet and crunchy cereal with honey and nuts.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Whole Wheat Bread", description: "Fresh whole wheat bread, perfect for toast and sandwiches.", quantity: 1, price: 89, discountedPrice: 79, images: [
            "https://images.unsplash.com/photo-1509440159596-0249088772ff?w=500",
            "https://images.unsplash.com/photo-1509440159596-0249088772ff?w=500",
            "https://images.unsplash.com/photo-1509440159596-0249088772ff?w=500"
        ], categoryId: 2),
        ItemModel(name: "Peanut Butter", description: "Creamy peanut butter, perfect for toast and sandwiches.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1626082927389-6cd4f504b4a3?w=500",
            "https://images.unsplash.com/photo-1626082927389-6cd4f504b4a3?w=500",
            "https://images.unsplash.com/photo-1626082927389-6cd4f504b4a3?w=500"
        ], categoryId: 2),
        ItemModel(name: "Strawberry Jam", description: "Sweet strawberry jam, perfect for toast and pastries.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Greek Yogurt", description: "Creamy Greek yogurt, high in protein and perfect for breakfast.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500"
        ], categoryId: 2),
        ItemModel(name: "Granola", description: "Crunchy granola with nuts and dried fruits.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500",
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500",
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500"
        ], categoryId: 2),
        ItemModel(name: "Maple Syrup", description: "Pure maple syrup, perfect for pancakes and waffles.", quantity: 1, price: 499, discountedPrice: 449, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Breakfast Sausages", description: "Savory breakfast sausages, perfect for a hearty breakfast.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Eggs (Dozen)", description: "Fresh farm eggs, perfect for breakfast.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1587486913049-53fc88980cfc?w=500",
            "https://images.unsplash.com/photo-1587486913049-53fc88980cfc?w=500",
            "https://images.unsplash.com/photo-1587486913049-53fc88980cfc?w=500"
        ], categoryId: 2),
        ItemModel(name: "Bacon", description: "Crispy bacon strips, perfect for breakfast.", quantity: 1, price: 449, discountedPrice: 399, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Pancake Mix", description: "Easy-to-make pancake mix, just add water.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1528207776546-365bb109ee86?w=500",
            "https://images.unsplash.com/photo-1528207776546-365bb109ee86?w=500",
            "https://images.unsplash.com/photo-1528207776546-365bb109ee86?w=500"
        ], categoryId: 2),
        ItemModel(name: "Waffle Mix", description: "Delicious waffle mix, perfect for breakfast.", quantity: 1, price: 349, discountedPrice: 299, images: [
            "https://images.unsplash.com/photo-1562376552-329d9b31e9127?w=500",
            "https://images.unsplash.com/photo-1562376552-329d9b31e9127?w=500",
            "https://images.unsplash.com/photo-1562376552-329d9b31e9127?w=500"
        ], categoryId: 2),
        ItemModel(name: "Breakfast Cereal Bars", description: "Nutritious cereal bars, perfect for on-the-go breakfast.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Muesli", description: "Healthy muesli with dried fruits and nuts.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500",
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500",
            "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?w=500"
        ], categoryId: 2),
        ItemModel(name: "Breakfast Smoothie Mix", description: "Fruit and vegetable smoothie mix, perfect for a quick breakfast.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1553530666-ba11a90a0868?w=500",
            "https://images.unsplash.com/photo-1553530666-ba11a90a0868?w=500",
            "https://images.unsplash.com/photo-1553530666-ba11a90a0868?w=500"
        ], categoryId: 2),
        ItemModel(name: "Breakfast Burritos", description: "Frozen breakfast burritos, ready to heat and eat.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Breakfast Hash Browns", description: "Crispy hash browns, perfect for breakfast.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500",
            "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500"
        ], categoryId: 2),
        ItemModel(name: "Breakfast Muffins", description: "Freshly baked breakfast muffins, various flavors.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1607958996333-41aef7caefaa?w=500",
            "https://images.unsplash.com/photo-1607958996333-41aef7caefaa?w=500",
            "https://images.unsplash.com/photo-1607958996333-41aef7caefaa?w=500"
        ], categoryId: 2),

        // Beverages (Category 3)
        ItemModel(name: "Mineral Water", description: "Pure mineral water, perfect for hydration.", quantity: 1, price: 49, discountedPrice: 39, images: [
            "https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=500",
            "https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=500",
            "https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=500"
        ], categoryId: 3),
        ItemModel(name: "Orange Juice", description: "Fresh orange juice, rich in vitamin C.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-16134782237194052c0c2b13?w=500",
            "https://images.unsplash.com/photo-16134782237194052c0c2b13?w=500",
            "https://images.unsplash.com/photo-16134782237194052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Green Tea", description: "Antioxidant-rich green tea, perfect for health.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?w=500",
            "https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?w=500",
            "https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?w=500"
        ], categoryId: 3),
        ItemModel(name: "Coffee Beans", description: "Premium coffee beans, perfect for brewing.", quantity: 1, price: 499, discountedPrice: 449, images: [
            "https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=500",
            "https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=500",
            "https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=500"
        ], categoryId: 3),
        ItemModel(name: "Energy Drink", description: "Refreshing energy drink, perfect for boosting energy.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Sports Drink", description: "Electrolyte-rich sports drink, perfect for athletes.", quantity: 1, price: 129, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Sparkling Water", description: "Refreshing sparkling water, perfect for any occasion.", quantity: 1, price: 69, discountedPrice: 59, images: [
            "https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=500",
            "https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=500",
            "https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=500"
        ], categoryId: 3),
        ItemModel(name: "Apple Juice", description: "Sweet apple juice, perfect for kids and adults.", quantity: 1, price: 179, discountedPrice: 159, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Coconut Water", description: "Natural coconut water, perfect for hydration.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Herbal Tea", description: "Soothing herbal tea, perfect for relaxation.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?w=500",
            "https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?w=500",
            "https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?w=500"
        ], categoryId: 3),
        ItemModel(name: "Hot Chocolate Mix", description: "Rich hot chocolate mix, perfect for cold days.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Lemonade", description: "Refreshing lemonade, perfect for summer.", quantity: 1, price: 159, discountedPrice: 139, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Iced Tea", description: "Refreshing iced tea, perfect for hot days.", quantity: 1, price: 139, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Protein Shake", description: "Nutritious protein shake, perfect for fitness.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Smoothie Mix", description: "Fruit smoothie mix, perfect for quick drinks.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1553530666-ba11a90a0868?w=500",
            "https://images.unsplash.com/photo-1553530666-ba11a90a0868?w=500",
            "https://images.unsplash.com/photo-1553530666-ba11a90a0868?w=500"
        ], categoryId: 3),
        ItemModel(name: "Almond Milk", description: "Creamy almond milk, perfect for dairy-free options.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Soy Milk", description: "Nutritious soy milk, perfect for dairy-free options.", quantity: 1, price: 229, discountedPrice: 209, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Fruit Punch", description: "Sweet fruit punch, perfect for parties.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Ginger Ale", description: "Refreshing ginger ale, perfect for digestion.", quantity: 1, price: 129, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),
        ItemModel(name: "Sparkling Juice", description: "Fizzy fruit juice, perfect for celebrations.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500",
            "https://images.unsplash.com/photo-1613478223719-4052c0c2b13?w=500"
        ], categoryId: 3),

        // Meat & Fish (Category 4)
        ItemModel(name: "Chicken Breast", description: "Fresh boneless chicken breast, perfect for grilling.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Ground Beef", description: "Fresh ground beef, perfect for burgers and pasta.", quantity: 1, price: 449, discountedPrice: 399, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Salmon Fillet", description: "Fresh salmon fillet, rich in omega-3.", quantity: 1, price: 699, discountedPrice: 649, images: [
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500"
        ], categoryId: 4),
        ItemModel(name: "Pork Chops", description: "Fresh pork chops, perfect for grilling.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Tuna Steak", description: "Fresh tuna steak, perfect for searing.", quantity: 1, price: 599, discountedPrice: 549, images: [
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500"
        ], categoryId: 4),
        ItemModel(name: "Lamb Chops", description: "Fresh lamb chops, perfect for grilling.", quantity: 1, price: 799, discountedPrice: 749, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Turkey Breast", description: "Fresh turkey breast, perfect for roasting.", quantity: 1, price: 499, discountedPrice: 449, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Shrimp", description: "Fresh shrimp, perfect for grilling or pasta.", quantity: 1, price: 599, discountedPrice: 549, images: [
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500"
        ], categoryId: 4),
        ItemModel(name: "Ground Turkey", description: "Fresh ground turkey, perfect for healthy meals.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Chicken Thighs", description: "Fresh chicken thighs, perfect for roasting.", quantity: 1, price: 349, discountedPrice: 299, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Beef Steak", description: "Premium beef steak, perfect for grilling.", quantity: 1, price: 899, discountedPrice: 849, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Fish Fillets", description: "Fresh white fish fillets, perfect for baking.", quantity: 1, price: 499, discountedPrice: 449, images: [
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500"
        ], categoryId: 4),
        ItemModel(name: "Chicken Wings", description: "Fresh chicken wings, perfect for grilling.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Ground Pork", description: "Fresh ground pork, perfect for meatballs.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Bacon", description: "Premium bacon, perfect for breakfast.", quantity: 1, price: 449, discountedPrice: 399, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Sausages", description: "Fresh sausages, perfect for grilling.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Ham", description: "Premium ham, perfect for sandwiches.", quantity: 1, price: 499, discountedPrice: 449, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Chicken Drumsticks", description: "Fresh chicken drumsticks, perfect for roasting.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Beef Ribs", description: "Fresh beef ribs, perfect for slow cooking.", quantity: 1, price: 799, discountedPrice: 749, images: [
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500",
            "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500"
        ], categoryId: 4),
        ItemModel(name: "Fish Sticks", description: "Breaded fish sticks, perfect for quick meals.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500",
            "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500"
        ], categoryId: 4),

        // Snacks (Category 5)
        ItemModel(name: "Potato Chips", description: "Crispy potato chips, perfect for snacking.", quantity: 1, price: 99, discountedPrice: 89, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Popcorn", description: "Buttery popcorn, perfect for movie nights.", quantity: 1, price: 79, discountedPrice: 69, images: [
            "https://images.unsplash.com/photo-1625944525903-bb1d5a4f5e8a?w=500",
            "https://images.unsplash.com/photo-1625944525903-bb1d5a4f5e8a?w=500",
            "https://images.unsplash.com/photo-1625944525903-bb1d5a4f5e8a?w=500"
        ], categoryId: 5),
        ItemModel(name: "Mixed Nuts", description: "Healthy mixed nuts, perfect for snacking.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),
        ItemModel(name: "Chocolate Bar", description: "Creamy chocolate bar, perfect for sweet cravings.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=500",
            "https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=500",
            "https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=500"
        ], categoryId: 5),
        ItemModel(name: "Trail Mix", description: "Nutritious trail mix with dried fruits.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),
        ItemModel(name: "Pretzels", description: "Salty pretzels, perfect for snacking.", quantity: 1, price: 129, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Granola Bars", description: "Healthy granola bars, perfect for on-the-go.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),
        ItemModel(name: "Cookies", description: "Delicious cookies, perfect for sweet treats.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=500",
            "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=500",
            "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=500"
        ], categoryId: 5),
        ItemModel(name: "Crackers", description: "Crispy crackers, perfect for snacking.", quantity: 1, price: 99, discountedPrice: 89, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Dried Fruits", description: "Sweet dried fruits, perfect for snacking.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),
        ItemModel(name: "Rice Cakes", description: "Light rice cakes, perfect for healthy snacking.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Protein Bars", description: "Nutritious protein bars, perfect for fitness.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),
        ItemModel(name: "Corn Chips", description: "Crispy corn chips, perfect for dipping.", quantity: 1, price: 99, discountedPrice: 89, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Cheese Puffs", description: "Cheesy puffs, perfect for snacking.", quantity: 1, price: 89, discountedPrice: 79, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Fruit Snacks", description: "Sweet fruit snacks, perfect for kids.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),
        ItemModel(name: "Beef Jerky", description: "Savory beef jerky, perfect for protein snacks.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Pita Chips", description: "Crispy pita chips, perfect for dipping.", quantity: 1, price: 129, discountedPrice: 119, images: [
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500",
            "https://images.unsplash.com/photo-1566478989037-eec170784d0b?w=500"
        ], categoryId: 5),
        ItemModel(name: "Popcorn Kernels", description: "Fresh popcorn kernels, perfect for homemade popcorn.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1625944525903-bb1d5a4f5e8a?w=500",
            "https://images.unsplash.com/photo-1625944525903-bb1d5a4f5e8a?w=500",
            "https://images.unsplash.com/photo-1625944525903-bb1d5a4f5e8a?w=500"
        ], categoryId: 5),
        ItemModel(name: "Mixed Seeds", description: "Healthy mixed seeds, perfect for snacking.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),
        ItemModel(name: "Energy Bars", description: "Nutritious energy bars, perfect for quick energy.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500",
            "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?w=500"
        ], categoryId: 5),

        // Dairy (Category 6)
        ItemModel(name: "Whole Milk", description: "Fresh whole milk, perfect for drinking and cooking.", quantity: 1, price: 89, discountedPrice: 79, images: [
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500",
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500",
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500"
        ], categoryId: 6),
        ItemModel(name: "Cheddar Cheese", description: "Sharp cheddar cheese, perfect for sandwiches.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Butter", description: "Creamy butter, perfect for cooking and baking.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1589985270922-89f7c4d0b6b2?w=500",
            "https://images.unsplash.com/photo-1589985270922-89f7c4d0b6b2?w=500",
            "https://images.unsplash.com/photo-1589985270922-89f7c4d0b6b2?w=500"
        ], categoryId: 6),
        ItemModel(name: "Yogurt", description: "Creamy yogurt, perfect for breakfast.", quantity: 1, price: 79, discountedPrice: 69, images: [
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500"
        ], categoryId: 6),
        ItemModel(name: "Cream Cheese", description: "Smooth cream cheese, perfect for bagels.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Sour Cream", description: "Tangy sour cream, perfect for dips.", quantity: 1, price: 99, discountedPrice: 89, images: [
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500"
        ], categoryId: 6),
        ItemModel(name: "Heavy Cream", description: "Rich heavy cream, perfect for cooking.", quantity: 1, price: 199, discountedPrice: 179, images: [
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500",
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500",
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500"
        ], categoryId: 6),
        ItemModel(name: "Mozzarella Cheese", description: "Fresh mozzarella, perfect for pizza.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Cottage Cheese", description: "Fresh cottage cheese, perfect for salads.", quantity: 1, price: 149, discountedPrice: 129, images: [
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500",
            "https://images.unsplash.com/photo-1488477181946-6428a848b919?w=500"
        ], categoryId: 6),
        ItemModel(name: "Whipping Cream", description: "Light whipping cream, perfect for desserts.", quantity: 1, price: 179, discountedPrice: 159, images: [
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500",
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500",
            "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500"
        ], categoryId: 6),
        ItemModel(name: "Parmesan Cheese", description: "Aged parmesan, perfect for pasta.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Ricotta Cheese", description: "Creamy ricotta, perfect for lasagna.", quantity: 1, price: 249, discountedPrice: 229, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Feta Cheese", description: "Tangy feta, perfect for salads.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Goat Cheese", description: "Creamy goat cheese, perfect for appetizers.", quantity: 1, price: 349, discountedPrice: 299, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Blue Cheese", description: "Strong blue cheese, perfect for salads.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Swiss Cheese", description: "Nutty Swiss cheese, perfect for sandwiches.", quantity: 1, price: 349, discountedPrice: 299, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Provolone Cheese", description: "Mild provolone, perfect for sandwiches.", quantity: 1, price: 299, discountedPrice: 249, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Gouda Cheese", description: "Smooth Gouda, perfect for snacking.", quantity: 1, price: 349, discountedPrice: 299, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Brie Cheese", description: "Creamy Brie, perfect for appetizers.", quantity: 1, price: 399, discountedPrice: 349, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6),
        ItemModel(name: "Mascarpone Cheese", description: "Rich mascarpone, perfect for desserts.", quantity: 1, price: 449, discountedPrice: 399, images: [
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500",
            "https://images.unsplash.com/photo-1452195100486-9cc805987862?w=500"
        ], categoryId: 6)
    ]
}
