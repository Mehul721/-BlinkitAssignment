//
//  ProductGridView.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 08/08/24.
//

import SwiftUI

struct ProductGridView: View {
    @Binding var selectedCategory: String
    @Binding var isLastItemVisible: Bool
    
    var products: [Product] {
        switch selectedCategory {
        case "Item 1":
            return [
                Product(name: "Item 1 Product 1", price: "₹100", weight: "850 g", imageUrl: "https://picsum.photos/200/300?random=1"),
                Product(name: "Item 1 Product 2", price: "₹150", weight: "1.1 kg", imageUrl: "https://picsum.photos/200/300?random=2"),
                Product(name: "Item 1 Product 3", price: "₹72", weight: "190 g", imageUrl: "https://picsum.photos/200/300?random=3"),
                Product(name: "Item 1 Product 4", price: "₹160", weight: "1 kg", imageUrl: "https://picsum.photos/200/300?random=4"),
                Product(name: "Item 1 Product 5", price: "₹100", weight: "900 g", imageUrl: "https://picsum.photos/200/300?random=5"),
                Product(name: "Item 1 Product 6", price: "₹160", weight: "900 g", imageUrl: "https://picsum.photos/200/300?random=6")
            ]
        case "Asian Sauces":
            return [
                Product(name: "Asian Sauce 1", price: "₹120", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=7"),
                Product(name: "Asian Sauce 2", price: "₹180", weight: "600 g", imageUrl: "https://picsum.photos/200/300?random=8"),
                Product(name: "Asian Sauce 3", price: "₹140", weight: "750 g", imageUrl: "https://picsum.photos/200/300?random=9"),
                Product(name: "Asian Sauce 4", price: "₹220", weight: "1 kg", imageUrl: "https://picsum.photos/200/300?random=10"),
                Product(name: "Asian Sauce 5", price: "₹110", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=11"),
                Product(name: "Asian Sauce 6", price: "₹130", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=12"),
                Product(name: "Asian Sauce 1", price: "₹120", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=7"),
                Product(name: "Asian Sauce 2", price: "₹180", weight: "600 g", imageUrl: "https://picsum.photos/200/300?random=8"),
                Product(name: "Asian Sauce 3", price: "₹140", weight: "750 g", imageUrl: "https://picsum.photos/200/300?random=9"),
                Product(name: "Asian Sauce 4", price: "₹220", weight: "1 kg", imageUrl: "https://picsum.photos/200/300?random=10"),
                Product(name: "Asian Sauce 5", price: "₹110", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=11"),
                Product(name: "Asian Sauce 6", price: "₹130", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=12")
            ]
        case "Jam & Spreads":
            return [
                Product(name: "Jam Product 1", price: "₹90", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=13"),
                Product(name: "Jam Product 2", price: "₹95", weight: "450 g", imageUrl: "https://picsum.photos/200/300?random=14"),
                Product(name: "Jam Product 3", price: "₹100", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=15"),
                Product(name: "Jam Product 4", price: "₹85", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=16"),
                Product(name: "Jam Product 5", price: "₹105", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=17"),
                Product(name: "Jam Product 6", price: "₹110", weight: "550 g", imageUrl: "https://picsum.photos/200/300?random=18")
            ]
        case "Mayonnaise":
            return [
                Product(name: "Mayonnaise Product 1", price: "₹120", weight: "200 g", imageUrl: "https://picsum.photos/200/300?random=19"),
                Product(name: "Mayonnaise Product 2", price: "₹140", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=20"),
                Product(name: "Mayonnaise Product 3", price: "₹160", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=21"),
                Product(name: "Mayonnaise Product 4", price: "₹110", weight: "150 g", imageUrl: "https://picsum.photos/200/300?random=22"),
                Product(name: "Mayonnaise Product 5", price: "₹130", weight: "200 g", imageUrl: "https://picsum.photos/200/300?random=23"),
                Product(name: "Mayonnaise Product 6", price: "₹150", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=24")
            ]
        case "Peanut Butter":
            return [
                Product(name: "Peanut Butter Product 1", price: "₹180", weight: "450 g", imageUrl: "https://picsum.photos/200/300?random=25"),
                Product(name: "Peanut Butter Product 2", price: "₹200", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=26"),
                Product(name: "Peanut Butter Product 3", price: "₹220", weight: "550 g", imageUrl: "https://picsum.photos/200/300?random=27"),
                Product(name: "Peanut Butter Product 4", price: "₹160", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=28"),
                Product(name: "Peanut Butter Product 5", price: "₹140", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=29"),
                Product(name: "Peanut Butter Product 6", price: "₹190", weight: "600 g", imageUrl: "https://picsum.photos/200/300?random=30")
            ]
        case "Chyawanprash & Honey":
            return [
                Product(name: "Chyawanprash Product 1", price: "₹210", weight: "1 kg", imageUrl: "https://picsum.photos/200/300?random=31"),
                Product(name: "Chyawanprash Product 2", price: "₹190", weight: "900 g", imageUrl: "https://picsum.photos/200/300?random=32"),
                Product(name: "Chyawanprash Product 3", price: "₹220", weight: "1.1 kg", imageUrl: "https://picsum.photos/200/300?random=33"),
                Product(name: "Chyawanprash Product 4", price: "₹200", weight: "950 g", imageUrl: "https://picsum.photos/200/300?random=34"),
                Product(name: "Chyawanprash Product 5", price: "₹180", weight: "800 g", imageUrl: "https://picsum.photos/200/300?random=35"),
                Product(name: "Chyawanprash Product 6", price: "₹230", weight: "1.2 kg", imageUrl: "https://picsum.photos/200/300?random=36")
            ]
        case "Chutney & Pickle":
            return [
                Product(name: "Chutney Product 1", price: "₹100", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=37"),
                Product(name: "Chutney Product 2", price: "₹120", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=38"),
                Product(name: "Chutney Product 3", price: "₹140", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=39"),
                Product(name: "Chutney Product 4", price: "₹130", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=40"),
                Product(name: "Chutney Product 5", price: "₹150", weight: "450 g", imageUrl: "https://picsum.photos/200/300?random=41"),
                Product(name: "Chutney Product 6", price: "₹160", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=42")
            ]
        case "Salad Dressings":
            return [
                Product(name: "Salad Dressing Product 1", price: "₹130", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=43"),
                Product(name: "Salad Dressing Product 2", price: "₹150", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=44"),
                Product(name: "Salad Dressing Product 3", price: "₹170", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=45"),
                Product(name: "Salad Dressing Product 4", price: "₹180", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=46"),
                Product(name: "Salad Dressing Product 5", price: "₹190", weight: "450 g", imageUrl: "https://picsum.photos/200/300?random=47"),
                Product(name: "Salad Dressing Product 6", price: "₹210", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=48")
            ]
        case "Dips":
            return [
                Product(name: "Dip Product 1", price: "₹80", weight: "150 g", imageUrl: "https://picsum.photos/200/300?random=49"),
                Product(name: "Dip Product 2", price: "₹85", weight: "170 g", imageUrl: "https://picsum.photos/200/300?random=50"),
                Product(name: "Dip Product 3", price: "₹90", weight: "200 g", imageUrl: "https://picsum.photos/200/300?random=51"),
                Product(name: "Dip Product 4", price: "₹95", weight: "220 g", imageUrl: "https://picsum.photos/200/300?random=52"),
                Product(name: "Dip Product 5", price: "₹100", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=53"),
                Product(name: "Dip Product 6", price: "₹105", weight: "270 g", imageUrl: "https://picsum.photos/200/300?random=54")
            ]
        default:
            return []
        }
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(products.indices, id: \.self) { index in
                    let product = products[index]
                    ProductItemView(product: product)
                        .onAppear {
                            // Set isLastItemVisible to true only if the last item becomes visible
                            if index == products.count - 1 {
                                isLastItemVisible = true
                            }
                        }
                        .onDisappear {
                            // Set isLastItemVisible to false only if the last item disappears
                            if index == products.count - 1 {
                                isLastItemVisible = false
                            }
                        }
                }
            }
            
        }
    }

}


