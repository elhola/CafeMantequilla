//
//  FeaturedItemsView.swift
//  Mantequilla
//
//  Created by Yaroslav G on 28.07.2023.

import SwiftUI

struct FeaturedItemsView: View {
    var featuredItems: [FeaturedItem] = [
        FeaturedItem(coffeeImageName: "coffee_1", itemName: "Special Espresso", reviews: [
            Review(username: "yaroslav3298", rating: 4.5, comment: "Great taste)"),
            Review(username: "dino32", rating: 5.0, comment: "Best espresso ever!")]),
        FeaturedItem(coffeeImageName: "coffee_2", itemName: "Caramel Macchiato", reviews: [
            Review(username: "lolly6454", rating: 4.0, comment: "Creamy and delicious")]),
        FeaturedItem(coffeeImageName: "coffee_3", itemName: "Iced Latte", reviews: [Review(username: "turtle123", rating: 3.0, comment: "delicious))))"),]),
        FeaturedItem(coffeeImageName: "coffee_4", itemName: "Cappuccino", reviews: [Review(username: "haitor", rating: 2.0, comment: "bad :("),]),
        FeaturedItem(coffeeImageName: "coffee_5", itemName: "Mocha", reviews:
                        [ Review(username: "the_fish98", rating: 4.5, comment: "Creamy :)"),]),
        FeaturedItem(coffeeImageName: "coffee_6", itemName: "Flat White", reviews: [Review(username: "bird23", rating: 5.0, comment: "so gooood")]),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(featuredItems) { item in
                    NavigationLink(destination: ReviewsView(selectedItem: item)) {
                        FeaturedItemView(coffeeImageName: item.coffeeImageName, itemName: item.itemName)
                    }
                }
            }
        }
    }
}

struct FeaturedItemView: View {
    let coffeeImageName: String
    let itemName: String
    
    var body: some View {
        VStack {
            Image("latte")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .cornerRadius(10)
            
            Text(itemName)
                .font(.subheadline)
                .foregroundColor(.black)
        }
        .padding()
    }
}

struct FeaturedItemsView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemsView()
    }
}
