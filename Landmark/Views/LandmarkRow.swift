//
//  LandmarkRow.swift
//  Landmark
//
//  Created by locussigilli on 6/10/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmarkrow: Landmark
    
    var body: some View {
        HStack {
            landmarkrow.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmarkrow.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmarkrow: modelData[1])   //ModelData
           // LandmarkRow(landmark: landmarks[1])

//        LandmarkRow(landmark: landmarks[0])
//            .previewLayout(.fixed(width: 300, height:70))
//        LandmarkRow(landmark: landmarks[1])
//            .previewLayout(.fixed(width: 300, height:70))
            
        }
    }
}
