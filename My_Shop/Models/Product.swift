//
//  Product.swift
//  My_Shop
//
//  Created by Albert on 30.06.2022.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    
}


var productList = [Product(name: "Orange ", image: "sweater1", price: 54),
                   Product(name: "Orange 1", image: "sweater2", price: 89),
                   Product(name: "Orange 2", image: "sweater3", price: 79),
                   Product(name: "Orange 3", image: "sweater4", price: 23),
                   Product(name: "Orange 4", image: "sweater5", price: 78),
                   Product(name: "Orange 5", image: "sweater6", price: 10  ),
                   Product(name: "Orange 6", image: "sweater7", price: 541),
                   Product(name: "Orange7", image: "sweater8", price: 546)]
