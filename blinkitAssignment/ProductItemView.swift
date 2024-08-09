//
//  ProductItemView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//
import SwiftUI

struct ProductItemView: View {
    let name: String
    let price: String
    let weight: String
    let imageUrl: String
    let discount: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Color.purple.opacity(0.05)
                
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 120, maxHeight: 100)
                        .cornerRadius(10)
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(maxWidth: 120, maxHeight: 120)
                }
            }
            .frame(height: 120)
            .cornerRadius(10)
            
            Text(name)
                .font(.headline)
                .lineLimit(2)
            
            Text(weight)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(price)
                        .font(.headline)
                    
                    if discount > 0 {
                        Text("\(discount)% OFF")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                
                Spacer()
                
                Button(action: {
                }) {
                    Text("ADD")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.green, lineWidth: 1)
                        )
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}







