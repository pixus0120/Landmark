//
//  ModelData.swift
//  Landmark
//
//  Created by locussigilli on 6/10/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    
    @Published var landmarkModel: [Landmark] = load("landmarkData.json")
                var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    
    var features: [Landmark]{
        landmarkModel.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
         //   grouping: landmarks,
            grouping: landmarkModel,
            by: { $0.category.rawValue }
        )
    }
    
}




//MARK: - Standard Code

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {

        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
