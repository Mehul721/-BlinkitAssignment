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
            ZStack {
                Color.purple.opacity(0.05) // Background color of the container

                AsyncImage(url: URL(string: product.imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 120, maxHeight:100) // Centering the image
                        .cornerRadius(10)
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(maxWidth: 120, maxHeight: 120)
                }
            }
            .frame(height: 120) // Container height
            .cornerRadius(10)

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
                    // Add to cart action
                }) {
                    Text("ADD")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.green) // Set text color to green
                        .padding(.vertical, 4)
                        .padding(.horizontal, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.green, lineWidth: 1) // Add green border
                        )
                }

            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}


#Preview {
    ContentView()
}






