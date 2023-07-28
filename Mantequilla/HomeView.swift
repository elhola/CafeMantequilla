//
//  HomeView.swift
//  Mantequilla
//
//  Created by Yaroslav G on 28.07.2023.

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.orange, .white], startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 0.9, y: 0.6))
                .ignoresSafeArea()
            VStack {
                Image("cafe")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                
                FeaturedItemsView()
                
                NavigationLink(destination: MenuView()) {
                    Text("Order Now")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                .padding()
                
                Text("Contact Information")
                    .padding()
                
                HStack {
                    SocialMediaLink(imageName: "facebook_logo", url: "https://www.facebook.com")
                    SocialMediaLink(imageName: "instagram_logo", url: "https://www.instagram.com")
                    SocialMediaLink(imageName: "twitter_logo", url: "https://www.twitter.com")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
