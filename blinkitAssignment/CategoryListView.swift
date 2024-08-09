//
//  CategoryListView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//

import SwiftUI

struct CategoryListView: View {
    let categories = ["Item 1", "Asian Sauces", "Jam & Spreads", "Mayonnaise", "Peanut Butter", "Chyawanprash & Honey", "Chutney & Pickle", "Salad Dressings", "Dips"]
    @Binding var selectedCategory: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        selectedCategory = category
                    }) {
                        VStack {
                            ZStack {
                                Circle()
                                    .fill(Color.gray) // Background color of the circular container
                                    .frame(width: 40, height: 40) // Set the size of the circle

                                Image(systemName: "star.fill") // Replace with your desired image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: selectedCategory == category ? 30 : 24, height: selectedCategory == category ? 30 : 24) // Size of the image
                                    .foregroundColor(.white) // Image color
                                    .animation(.easeInOut(duration: 0.3), value: selectedCategory == category) // Animation when the category is selected
                            }
                            Text(category)
                                .font(.system(size: 10))
                                .fontWeight(selectedCategory == category ? .bold : .regular)
                                .foregroundColor(.primary)
                                .padding(.leading, 8)
                                .padding(.trailing, 8)
                                .multilineTextAlignment(.center)
                        }

                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.top, 20)
        }
    }
}
