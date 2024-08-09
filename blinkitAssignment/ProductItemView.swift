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
                    .frame(height: 150)
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal,40) 
            } placeholder: {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 150)
                    .overlay(
                        ProgressView()
                            .scaleEffect(0.5)
                    )
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
                    // Action for the ADD button
                }) {
                    Text("ADD")
                        .font(.caption)
                        .foregroundColor(.brandPrimary)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(Color.white)
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.green))
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .saturation(0.2)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 2)
    }
}
