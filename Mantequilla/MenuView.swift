//
//  MenuView.swift
//  Mantequilla
//
//  Created by Yaroslav G on 28.07.2023.

import Foundation
import SwiftUI

struct MenuView: View {
    var body: some View {
        List {
            ForEach(0..<10) { index in
                MenuItemView()
            }
        }
        .navigationBarTitle("Menu")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("latte")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 130)
                .cornerRadius(10)
            
            Text("Item Name")
                .font(.headline)
            
            Text("Item Description")
                .font(.subheadline)
            
            Text("$1.11")
                .font(.subheadline)
                .foregroundColor(.orange)
        }
        .padding()
    }
}
