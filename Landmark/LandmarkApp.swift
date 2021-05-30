//
//  LandmarkApp.swift
//  Landmark
//
//  Created by locussigilli on 5/30/21.
//

import SwiftUI

@main
struct LandmarkApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
