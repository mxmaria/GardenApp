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
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image(systemName: "leaf.fill")
                            .foregroundColor(.white)
                    }
                }
                .embedInNavigationView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Second Page")
                .embedInNavigationView()
                .tabItem {
                    Label("My Garden", systemImage: "leaf")
                }
            
        }.accentColor(.mint)
        .navigationTitle("GreenApp")
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
