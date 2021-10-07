//
//  NewButtonModifiersExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 29.09.2021.
//

import SwiftUI

struct ButtonModifiersExample: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Plain", role: .none, action: {})
                .buttonStyle(.plain)
            
            Button("Auto", role: .none, action: {})
                .buttonStyle(.automatic)
            
            Button("Log out", role: .cancel, action: {})
                .buttonStyle(.bordered)
                .tint(.yellow)
            
            Button("Cancel", role: .cancel, action: {})
                .buttonStyle(.borderless)
                .tint(.yellow)
            
            Button("Delete", role: .destructive, action: {})
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
            
            Button(role: .destructive, action: {}) {
                Text("Register")
                    .padding(.horizontal)
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .tint(.orange)
        }
        .padding()
    }
}

struct ButtonModifiersExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonModifiersExample()
    }
}
