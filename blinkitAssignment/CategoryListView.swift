//
//  CategoryListView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//

import SwiftUI

struct CategoryListView: View {
    let categories = ["Item 1", "Asian Sauces", "Jam & Spreads", "Mayonnaise", "Peanut Butter", "Chyawanprash & Honey", "Chutney & Pickle", "Salad Dressings", "Dips"]
    
    let categoryImages: [String: String] = [
        "Item 1": "https://picsum.photos/0/1/500/800",
        
    ]
    
    @Binding var selectedCategory: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        selectedCategory = category
                    }) {
                        HStack {
                            if let imageUrl = categoryImages[category], let url = URL(string: imageUrl) {
                                AsyncImage(url: url) { image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)  // Adjust size as needed
                                        .cornerRadius(5)
                                } placeholder: {
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.3))
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                }
                            }
                            Text(category)
                                .font(.system(size: 14))
                                .fontWeight(selectedCategory == category ? .bold : .regular)
                                .foregroundColor(.primary)
                                .padding(.leading, 10)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.top, 20)
        }
    }
}


