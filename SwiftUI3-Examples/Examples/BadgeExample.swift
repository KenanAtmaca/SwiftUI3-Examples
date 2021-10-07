//
//  BadgeExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 13.06.2021.
//

import SwiftUI

struct BadgeExample: View {
    var body: some View {
        TabView {
            Text("Profile Screen")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .badge(2)
        }
    }
}

struct BadgeExample_Previews: PreviewProvider {
    static var previews: some View {
        BadgeExample()
    }
}
