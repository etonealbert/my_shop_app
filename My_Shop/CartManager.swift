//
//  CartManager.swift
//  My_Shop
//
//  Created by Albert on 23.07.2022.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCard(product:  Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{  $0.id != product.id }
        total -= product.price
    }
}
