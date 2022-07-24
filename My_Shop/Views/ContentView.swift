//
//  ContentView.swift
//  My_Shop
//
//  Created by Albert on 30.06.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum:160), spacing: 20)]
    var body: some View {
        NavigationView  {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20 ) {
                    ForEach(productList, id: \.id ){ product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                        
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Products"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)

                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
                CartButton(numberOfProducts: 1)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
