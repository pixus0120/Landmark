//
//  Landmark.swift
//  Landmark
//
//  Created by locussigilli on 6/10/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    ////////////
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lake = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    ///////////
    
    
    private var imageName: String
    
    var image: Image{
        Image(imageName)     ///   !!!
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
}
