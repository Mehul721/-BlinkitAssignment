//
//  ProductGridView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//
import SwiftUI

struct ProductGridView: View {
    @Binding var selectedCategory: String
    @Binding var isLastItemVisible: Bool
    
    var products: [Product] {
        generateProducts(for: selectedCategory)
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(products.indices, id: \.self) { index in
                    let product = products[index]
                    ProductItemView(name: product.name, price: product.price, weight: product.weight, imageUrl: product.imageUrl, discount: product.discount)
                        .onAppear {
                            if index == products.count - 1 {
                                isLastItemVisible = true
                            }
                        }
                        .onDisappear {
                            if index == products.count - 1 {
                                isLastItemVisible = false
                            }
                        }
                }
            }
        }
    }
}



