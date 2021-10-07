//
//  TextFieldManagmentExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 1.10.2021.
//

import SwiftUI

struct TextFieldManagmentExample: View {
    
    @State private var mailField: String = ""
    @State private var passField: String = ""
    
    var body: some View {
        Form {
            TextField("Email", text: $mailField)
                .submitLabel(.continue)
            SecureField("Password", text: $passField)
                .submitLabel(.send)
        }
        .onSubmit {
            print(mailField)
            print(passField)
        }
    }
}

struct TextFieldManagmentExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldManagmentExample()
    }
}
