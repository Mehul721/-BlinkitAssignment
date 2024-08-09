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
    @State private var dragOffset = CGSize.zero
    @State private var isLastItemVisible = false

    var body: some View {
        HStack(spacing: 0) {
            // Category List
            CategoryListView(selectedCategory: $selectedCategory)
                .frame(width: UIScreen.main.bounds.width * 0.15)
                .background(Color(.systemGray6)) // Optional background color
            
            // Product Grid
            ProductGridView(selectedCategory: $selectedCategory, isLastItemVisible: $isLastItemVisible)
                .frame(width: UIScreen.main.bounds.width * 0.85)
                .refreshable {
                    pullToRefresh()
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            dragOffset = value.translation
                            print("Drag Offset: \(dragOffset.height) \(isLastItemVisible)") // Debugging print statement
                            if dragOffset.height < -12 && isLastItemVisible { // Adjust the threshold as needed
                                pullUpToRefresh()
                            }
                        }
                        .onEnded { _ in
                            dragOffset = .zero // Reset the drag offset after gesture ends
                        }
                )
        }
        //.edgesIgnoringSafeArea(.all)
    }

    private func pullToRefresh() {
        print("Pull to refresh called")
        // Find the index of the selected category
        if let currentIndex = categories.firstIndex(of: selectedCategory), currentIndex > 0 {
            selectedCategory = categories[currentIndex - 1]
        }
    }
    
    private func pullUpToRefresh() {
        print("Pull up to refresh called")
        // Find the index of the selected category
        if let currentIndex = categories.firstIndex(of: selectedCategory), currentIndex < categories.count - 1 {
            selectedCategory = categories[currentIndex + 1]
        }
    }

    private var categories: [String] {
        return ["Item 1", "Asian Sauces", "Jam & Spreads", "Mayonnaise", "Peanut Butter", "Chyawanprash & Honey", "Chutney & Pickle", "Salad Dressings", "Dips"]
    }
}



#Preview {
    ContentView()
}
