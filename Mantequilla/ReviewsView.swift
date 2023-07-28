//
//  ReviewsView.swift
//  Mantequilla
//
//  Created by Yaroslav G on 28.07.2023.

import SwiftUI

struct ReviewsView: View {
    let selectedItem: FeaturedItem
    
    var body: some View {
        List(selectedItem.reviews) { review in
            VStack(alignment: .leading) {
                Text(review.username)
                    .font(.headline)
                Text("Rating: \(review.rating)")
                    .font(.subheadline)
                Text(review.comment)
            }
        }
        .navigationBarTitle(selectedItem.itemName)
    }
}

struct FeaturedItem: Identifiable {
    let id = UUID()
    let coffeeImageName: String
    let itemName: String
    let reviews: [Review]
}

struct Review: Identifiable {
    let id = UUID()
    let username: String
    let rating: Double
    let comment: String
}
