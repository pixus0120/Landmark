//
//  LandmarkList.swift
//  Landmark
//
//  Created by locussigilli on 6/10/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarkModel.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly)  {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
   ////////////////////////////////////////
//       List(landmarks, id: \.id) { landmark in
            NavigationLink(destination:
        
                LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
            }
                ////////////////////////////////////////////
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
                .environmentObject(ModelData())
        
    }
}
