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
                        Text(category)
                            .font(.system(size: 14))
                            .fontWeight(selectedCategory == category ? .bold : .regular)
                            .foregroundColor(.primary)
                            .padding(.leading, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.top, 20)
        }
    }
}


#Preview {
    CategoryListView(selectedCategory: <#T##Binding<String>#>)
}
