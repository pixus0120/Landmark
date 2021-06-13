//
//  ContentView.swift
//  Landmark
//
//  Created by locussigilli on 5/30/21.

import SwiftUI

struct ContentView: View {

    var body: some View {
        LandmarkList()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
