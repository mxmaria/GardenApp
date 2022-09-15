//
//  View+Extensions.swift
//  GardenApp
//
//  Created by Maria Maximova on 15.09.2022.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
