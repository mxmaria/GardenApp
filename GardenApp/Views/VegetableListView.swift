//
//  VegetableListView.swift
//  GardenApp
//
//  Created by Maria Maximova on 15.09.2022.
//

import SwiftUI

struct VegetableListView: View {
    
    @StateObject private var vegetableListVM = VegetableListViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(vegetableListVM.vegetables, id: \.id) { vegetable in
                    
                    NavigationLink(destination: VegetableDetailsView(vegetable: vegetable)) {
                        
                        VegetableCell(vegetable: vegetable)
                            .background(Constants.Colors.lightGrayColor)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    }
                    
                }.listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Garden App")
            .task {
                await vegetableListVM.getAll()
            }
        }
    }
}

struct VegetableListView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableListView()
            .navigationTitle("Garden App")
            .embedInNavigationView()
    }
}

struct VegetableCell: View {
    
    let vegetable: VegetableViewModel
    
    var body: some View {
        HStack {
            AsyncImage(url: vegetable.thumbnailUrl) { image in
                image.resizable()
                    .frame(maxWidth: 75, maxHeight: 75)
            } placeholder: {
                ProgressView()
            }
            
            Text(vegetable.name)
            Spacer()
        }.padding(5)
            .frame(maxWidth: .infinity)
    }
}
