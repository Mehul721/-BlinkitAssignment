//
//  ContentView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedCategory: String = "Item 1"
    @State private var pullToRefreshTriggered = false

    var body: some View {
        HStack(spacing: 0) {
            // Category List
            CategoryListView(selectedCategory: $selectedCategory)
                .frame(width: UIScreen.main.bounds.width * 0.15)
                .background(Color(.systemGray6)) // Optional background color
            
            // Product Grid
            ProductGridView(selectedCategory: selectedCategory)
                .frame(width: UIScreen.main.bounds.width * 0.85)
                .refreshable {
                    pullToRefresh()
                }
        }
        .edgesIgnoringSafeArea(.all)
    }

    private func pullToRefresh() {
        print("Pull to refresh called")
        // Find the index of the selected category
        if let currentIndex = categories.firstIndex(of: selectedCategory), currentIndex > 0 {
            selectedCategory = categories[currentIndex - 1]
        }
    }

    private var categories: [String] {
        return ["Item 1", "Asian Sauces", "Jam & Spreads", "Mayonnaise", "Peanut Butter", "Chyawanprash & Honey", "Chutney & Pickle", "Salad Dressings", "Dips"]
    }
}


#Preview {
    ContentView()
}
