//
//  Profile.swift
//  Landmark
//
//  Created by locussigilli on 7/8/21.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifictions = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { self.rawValue }
    }
}
