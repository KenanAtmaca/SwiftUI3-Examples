//
//  FocusStateExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 29.09.2021.
//

import SwiftUI

enum FocusableField: Hashable {
    case email
    case password
}

struct FocusStateExample: View {
    
    @FocusState private var isEmailFocused: Bool
    @FocusState private var isPasswordFocused: Bool
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("email", text: $email, prompt: Text("email"))
                    .focused($isEmailFocused)
                SecureField("password", text: $password, prompt: Text("password"))
                    .focused($isPasswordFocused)
                
                Button("login") {
                    if email.isEmpty {
                        isEmailFocused = true
                    } else if password.isEmpty {
                        isPasswordFocused = true
                    } else {
                        isPasswordFocused = false
                        isEmailFocused = false
                        // login
                    }
                }
            }
            .navigationTitle("Sign in")
        }
    }
}

struct FocusStateExample_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateExample()
    }
}
