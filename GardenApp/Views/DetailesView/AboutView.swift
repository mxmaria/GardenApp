//
//  AboutView.swift
//  GardenApp
//
//  Created by Maria Maximova on 16.09.2022.
//

import SwiftUI

struct AboutView: View {
    
    let vegetable: VegetableViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(vegetable.description)
                .fixedSize(horizontal: false, vertical: true)
            
            Text("Sowing")
                .font(.headline)
            
            VStack(spacing: 10) {
                TwoColumnView(left: "Seed depth", right: vegetable.seedDepth)
                TwoColumnView(left: "Germination soil temperature", right: vegetable.growingSoilTemp)
            }
            
            DescriptionView(heading: "Sowing", content: vegetable.sowingDescription)
                .padding()
                .background(Constants.Colors.lightGrayColor)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .foregroundColor(.black)
            
            DescriptionView(heading: "Growing", content: vegetable.growingDescription)
                .padding()
                .background(Constants.Colors.lightBlueColor)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .foregroundColor(.black)
            
            Spacer()
            
        }.padding()
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView(vegetable: VegetableViewModel.default())
    }
}
