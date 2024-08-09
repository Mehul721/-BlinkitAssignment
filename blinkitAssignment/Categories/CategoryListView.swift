//
//  CategoryListView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//

import SwiftUI

struct CategoryListView: View {
    let categories = ["Fruits", "Asian Sauces", "Jam & Spreads", "Mayonnaise", "Peanut Butter", "Honey", "Chutney", "Salad Dressing", "Dips"]
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
                                    .fill(Color.gray)
                                    .frame(width: 40, height: 40)

                                Image(systemName: "carrot.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: selectedCategory == category ? 30 : 24, height: selectedCategory == category ? 30 : 24)
                                    .foregroundColor(.white)
                                    .animation(.easeInOut(duration: 0.3), value: selectedCategory == category)
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
