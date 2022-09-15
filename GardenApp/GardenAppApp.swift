//
//  GardenAppApp.swift
//  GardenApp
//
//  Created by Maria Maximova on 15.09.2022.
//

import SwiftUI

@main
struct GardenAppApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        setupTheme()
    }
    
    private func setupTheme() {
        UINavigationBar.appearance().backgroundColor = UIColor(.green)
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
    }

    var body: some Scene {
        WindowGroup {
            MainScreenView()
        }
    }
}
