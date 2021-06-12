//
//  LandmarkList.swift
//  Landmark
//
//  Created by locussigilli on 6/10/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
   ////////////////////////////////////////
        List(modelData) { landmark in
//       List(landmarks, id: \.id) { landmark in
            NavigationLink(destination:
        
                LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmarkrow: landmark)
                ////////////////////////////////////////////
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd Generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
