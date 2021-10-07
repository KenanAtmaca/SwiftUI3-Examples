//
//  DismissDisabledExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 1.10.2021.
//

import SwiftUI

struct DismissDisabledExample: View {
    
    @State private var showSecondScreen: Bool = false
    
    var body: some View {
        Button {
            showSecondScreen.toggle()
        } label: {
            Text("Show Screen")
                .underline()
                .foregroundColor(.blue)
        }
        .sheet(isPresented: $showSecondScreen) {
            DismissDisabledScreenSecond()
        }
    }
}

struct DismissDisabledScreenSecond: View {
    
    @State private var isAccepted: Bool = false
    
    var body: some View {
        Form {
            Button {
                isAccepted = true
            } label: {
                Text("Accept")
            }

        }
        .interactiveDismissDisabled(!isAccepted)
    }
}

struct DismissDisabledExample_Previews: PreviewProvider {
    static var previews: some View {
        DismissDisabledExample()
    }
}
