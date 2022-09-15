//
//  MainScreenView.swift
//  GardenApp
//
//  Created by Maria Maximova on 15.09.2022.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        TabView {
            VegetableListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Second Page")
                .tabItem {
                    Label("My Garden", systemImage: "leaf")
                }
            
        }.accentColor(.mint)
        .navigationTitle("GreenApp")
        .toolbar {
            ToolbarItem(placement: .principal) {
                Image(systemName: "leaf.fill")
                    .foregroundColor(.white)
            }
        }
        .embedInNavigationView()
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
