//
//  ProfileHost.swift
//  Landmark
//
//  Created by locussigilli on 7/8/21.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ProfileSummary(profile: draftProfile)

        }
        .padding()
    //    Text("Profile for: \(draftProfile.username)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
