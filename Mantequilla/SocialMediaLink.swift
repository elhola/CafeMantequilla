//
//  SocialMediaLink.swift
//  Mantequilla
//
//  Created by Yaroslav G on 28.07.2023.

import Foundation
import SwiftUI

struct SocialMediaLink: View {
    let imageName: String
    let url: String
    
    var body: some View {
        VStack {
            Button(action: {
                if let link = URL(string: url) {
                    UIApplication.shared.open(link)
                }
            }) {
                VStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: 35, height: 35)
                }
            }
        }
    }
}
