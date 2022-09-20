//
//  DescriptionView.swift
//  GardenApp
//
//  Created by Maria Maximova on 16.09.2022.
//

import SwiftUI

struct DescriptionView: View {
    
    let heading: String
    let content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(heading)
                .font(.headline)
            Text(content)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(heading: "Sowing", content: "Avocado trees usually require bla bla bla bla bla lblblbal balbalba lbalba lbal abla lba lablablbalba ba")
    }
}
