//
//  VegetableModel.swift
//  GardenApp
//
//  Created by Maria Maximova on 15.09.2022.
//

import Foundation

struct Vegetable: Decodable {
    let vegetableId: Int
    let name : String
    let description: String
    let thumbnailImage: String
    
    private enum CodingKeys: String, CodingKey {
        case vegetableId = "VegetableId"
        case name = "Name"
        case description = "Description"
        case thumbnailImage = "ThumbnailImage"
    }
}
