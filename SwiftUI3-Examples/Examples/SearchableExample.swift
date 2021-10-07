//
//  SearchableExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 13.06.2021.
//

import SwiftUI

struct SearchableExample: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            Text("Searching for -> \(searchText)")
                .searchable(text: $searchText, prompt: "Search..")
                .navigationTitle("Searchable Example")
        }
    }
}

struct SearchableExample_Previews: PreviewProvider {
    static var previews: some View {
        SearchableExample()
    }
}
