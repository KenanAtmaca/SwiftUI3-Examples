//
//  ControlGroupExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 22.10.2021.
//

import SwiftUI

struct ControlGroupExample: View {
    var body: some View {
        ControlGroup {
            Button(action: {}) {
                Label("Decrease", systemImage: "minus")
            }
            
            Button(action: {}) {
                Label("Increase", systemImage: "plus")
            }
        }
        .padding()
    }
}

struct ControlGroupExample_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroupExample()
    }
}
