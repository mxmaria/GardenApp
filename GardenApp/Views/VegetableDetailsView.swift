//
//  VegetableDetailsView.swift
//  GardenApp
//
//  Created by Maria Maximova on 16.09.2022.
//

import SwiftUI

enum VegetableInfoOptions: CaseIterable {
    case about
    case companions
    case problems
}

extension VegetableInfoOptions {
    
    var title: String {
        switch self {
        case .about: return "About"
        case .companions: return "Companions"
        case .problems: return "Problems"
        }
    }
}

struct VegetableDetailsView: View {
    
    let vegetable: VegetableViewModel
    @State private var selection: VegetableInfoOptions = .about
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Picker("Select", selection: $selection) {
                    ForEach(VegetableInfoOptions.allCases, id: \.self) { info in
                        Text(info.title).tag(info)
                    }
                }.pickerStyle(.segmented)
                
                switch selection {
                case .about:
                    AboutView(vegetable: vegetable)
                case .companions:
                    Text("Companions")
                case .problems:
                    Text("Problems")
                }
            }
            .navigationTitle(vegetable.name)
        }
    }
}

struct VegetableDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableDetailsView(vegetable: VegetableViewModel.default())
            .embedInNavigationView()
    }
}
