//
//  ProductDetails.swift
//  blinkitAssignment
//
//  Created by Mehul Jain on 09/08/24.
//

import Foundation

struct Product {
    let name: String
    let price: String
    let weight: String
    let imageUrl: String
    let discount: Int
}
func generateProducts(for category: String) -> [Product] {
    switch category {
    case "Fruits":
        return [
            Product(name: "Fruits Product 1", price: "₹100", weight: "850 g", imageUrl: "https://picsum.photos/200/300?random=1", discount: 10),
            Product(name: "Fruits Product 2", price: "₹150", weight: "1.1 kg", imageUrl: "https://picsum.photos/200/300?random=2", discount: 15),
            Product(name: "Fruits Product 3", price: "₹72", weight: "190 g", imageUrl: "https://picsum.photos/200/300?random=3", discount: 12),
            Product(name: "Fruits Product 4", price: "₹160", weight: "1 kg", imageUrl: "https://picsum.photos/200/300?random=4", discount: 15),
            Product(name: "Fruits Product 5", price: "₹100", weight: "900 g", imageUrl: "https://picsum.photos/200/300?random=5", discount: 20),
            Product(name: "Fruits Product 6", price: "₹160", weight: "900 g", imageUrl: "https://picsum.photos/200/300?random=6", discount: 25)
        ]
    case "Asian Sauces":
        return [
            Product(name: "Asian Sauce 1", price: "₹120", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=7", discount: 10),
            Product(name: "Asian Sauce 2", price: "₹180", weight: "600 g", imageUrl: "https://picsum.photos/200/300?random=8", discount: 10),
            Product(name: "Asian Sauce 3", price: "₹140", weight: "750 g", imageUrl: "https://picsum.photos/200/300?random=9", discount: 20),
            Product(name: "Asian Sauce 4", price: "₹220", weight: "1 kg", imageUrl: "https://picsum.photos/200/300?random=10", discount: 30),
            Product(name: "Asian Sauce 5", price: "₹110", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=11", discount: 10),
            Product(name: "Asian Sauce 6", price: "₹130", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=12", discount: 20)
        ]
    case "Jam & Spreads":
        return [
            Product(name: "Jam Product 1", price: "₹90", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=13", discount: 15),
            Product(name: "Jam Product 2", price: "₹95", weight: "450 g", imageUrl: "https://picsum.photos/200/300?random=14", discount: 20),
            Product(name: "Jam Product 3", price: "₹100", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=15", discount: 25),
            Product(name: "Jam Product 4", price: "₹85", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=16", discount: 30),
            Product(name: "Jam Product 5", price: "₹105", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=17", discount: 20),
            Product(name: "Jam Product 6", price: "₹110", weight: "550 g", imageUrl: "https://picsum.photos/200/300?random=18", discount: 10)
        ]
    case "Mayonnaise":
        return [
            Product(name: "Mayonnaise Product 1", price: "₹120", weight: "200 g", imageUrl: "https://picsum.photos/200/300?random=19", discount: 20),
            Product(name: "Mayonnaise Product 2", price: "₹140", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=20", discount: 10),
            Product(name: "Mayonnaise Product 3", price: "₹160", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=21", discount: 10),
            Product(name: "Mayonnaise Product 4", price: "₹110", weight: "150 g", imageUrl: "https://picsum.photos/200/300?random=22", discount: 5),
            Product(name: "Mayonnaise Product 5", price: "₹130", weight: "200 g", imageUrl: "https://picsum.photos/200/300?random=23", discount: 25),
            Product(name: "Mayonnaise Product 6", price: "₹150", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=24", discount: 10)
        ]
    case "Peanut Butter":
        return [
            Product(name: "Peanut Butter Product 1", price: "₹180", weight: "450 g", imageUrl: "https://picsum.photos/200/300?random=25", discount: 18),
            Product(name: "Peanut Butter Product 2", price: "₹200", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=26", discount: 10),
            Product(name: "Peanut Butter Product 3", price: "₹220", weight: "550 g", imageUrl: "https://picsum.photos/200/300?random=27", discount: 13),
            Product(name: "Peanut Butter Product 4", price: "₹160", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=28", discount: 17),
            Product(name: "Peanut Butter Product 5", price: "₹140", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=29", discount: 10),
            Product(name: "Peanut Butter Product 6", price: "₹190", weight: "600 g", imageUrl: "https://picsum.photos/200/300?random=30", discount: 16)
        ]
    case "Honey":
        return [
            Product(name: "Honey Product 1", price: "₹210", weight: "1 kg", imageUrl: "https://picsum.photos/200/300?random=31", discount: 20),
            Product(name: "Honey Product 2", price: "₹190", weight: "900 g", imageUrl: "https://picsum.photos/200/300?random=32", discount: 13),
            Product(name: "Honey Product 3", price: "₹220", weight: "1.1 kg", imageUrl: "https://picsum.photos/200/300?random=33", discount: 10),
            Product(name: "Honey Product 4", price: "₹200", weight: "950 g", imageUrl: "https://picsum.photos/200/300?random=34", discount: 16),
            Product(name: "Honey Product 5", price: "₹180", weight: "800 g", imageUrl: "https://picsum.photos/200/300?random=35", discount: 16),
            Product(name: "Honey Product 6", price: "₹230", weight: "1.2 kg", imageUrl: "https://picsum.photos/200/300?random=36", discount: 13)
        ]
    case "Chutney":
        return [
            Product(name: "Chutney Product 1", price: "₹100", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=37", discount: 10),
            Product(name: "Chutney Product 2", price: "₹120", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=38", discount: 13),
            Product(name: "Chutney Product 3", price: "₹140", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=39", discount: 12),
            Product(name: "Chutney Product 4", price: "₹130", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=34", discount: 16),
            Product(name: "Chutney Product 5", price: "₹180", weight: "800 g", imageUrl: "https://picsum.photos/200/300?random=35", discount: 16),
            Product(name: "Chutney Product 6", price: "₹230", weight: "1.2 kg", imageUrl: "https://picsum.photos/200/300?random=36", discount: 13)
            ]
    case "Salad Dressing":
            return [
                Product(name: "Salad Dressing Product 1", price: "₹130", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=43", discount: 19),
                Product(name: "Salad Dressing Product 2", price: "₹150", weight: "300 g", imageUrl: "https://picsum.photos/200/300?random=44", discount: 10),
                Product(name: "Salad Dressing Product 3", price: "₹170", weight: "350 g", imageUrl: "https://picsum.photos/200/300?random=45", discount: 12),
                Product(name: "Salad Dressing Product 4", price: "₹180", weight: "400 g", imageUrl: "https://picsum.photos/200/300?random=46", discount: 14),
                Product(name: "Salad Dressing Product 5", price: "₹190", weight: "450 g", imageUrl: "https://picsum.photos/200/300?random=47", discount: 10),
                Product(name: "Salad Dressing Product 6", price: "₹210", weight: "500 g", imageUrl: "https://picsum.photos/200/300?random=48", discount: 11)
            ]
        case "Dips":
            return [
                Product(name: "Dip Product 1", price: "₹80", weight: "150 g", imageUrl: "https://picsum.photos/200/300?random=49", discount: 15),
                Product(name: "Dip Product 2", price: "₹85", weight: "170 g", imageUrl: "https://picsum.photos/200/300?random=50", discount: 10),
                Product(name: "Dip Product 3", price: "₹90", weight: "200 g", imageUrl: "https://picsum.photos/200/300?random=51", discount: 15),
                Product(name: "Dip Product 4", price: "₹95", weight: "220 g", imageUrl: "https://picsum.photos/200/300?random=52", discount: 10),
                Product(name: "Dip Product 5", price: "₹100", weight: "250 g", imageUrl: "https://picsum.photos/200/300?random=53", discount: 13),
                Product(name: "Dip Product 6", price: "₹105", weight: "270 g", imageUrl: "https://picsum.photos/200/300?random=54", discount: 12)
            ]
        default:
            return []
        }
    }
