//
//  ProductItemView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//
import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let weight: String
    let imageUrl: String
}

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: product.imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                    .cornerRadius(10)
            } placeholder: {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 120)
            }
            
            Text(product.name)
                .font(.headline)
                .lineLimit(2)
            
            Text(product.weight)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                Text(product.price)
                    .font(.headline)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("ADD")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 10)
                        .background(Color.green)
                        .cornerRadius(5)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 2)
    }
}

