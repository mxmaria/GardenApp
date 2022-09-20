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
        
        let headerAppearance = UINavigationBarAppearance()
        
        headerAppearance.backgroundColor = UIColor(.green)
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        headerAppearance.titleTextAttributes = textAttributes
        headerAppearance.largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().scrollEdgeAppearance = headerAppearance
    }

    var body: some Scene {
        WindowGroup {
            MainScreenView()
        }
    }
}
