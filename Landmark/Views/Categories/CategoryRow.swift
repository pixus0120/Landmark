//
//  CategoryRow.swift
//  Landmark
//
//  Created by locussigilli on 6/13/21.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {

        Text(categoryName)
            .font(.headline)
            .padding(.leading, 15)
            .padding(.top, 5)
            
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(items) { landmark in
                    CategoryItems(landmark: landmark)
                 
                }
            }
        }
        .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarkModel
    
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        
        )
    }
}
