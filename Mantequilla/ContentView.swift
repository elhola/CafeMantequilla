//
//  ContentView.swift
//  Mantequilla
//
//  Created by Yaroslav G on 28.07.2023.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeView()
                .navigationBarTitle("Cafe Mantequilla")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
