//
//  CategoryItems.swift
//  Landmark
//
//  Created by locussigilli on 6/13/21.
//

import SwiftUI

struct CategoryItems: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading){
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
            
        }
        .padding(.leading, 15)
    }
}

struct CategoryItems_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItems(landmark: ModelData().landmarkModel[0])
    }
}
