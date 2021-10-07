//
//  ListSwipeExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 13.06.2021.
//

import SwiftUI

struct ListSwipeExample: View {
    
    @State private var nameList: [String] = ["Kenan", "Steve", "Eric", "Susan", "Luis", "Mona", "Jesica"]
    
    var body: some View {
        List {
            ForEach(Array(nameList.enumerated()), id: \.offset) { index, name in
                Text(name)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .swipeActions {
                        Button {
                            nameList.remove(at: index)
                        } label: {
                            Image(systemName: "delete.left.fill")
                                .font(.title2)
                        }
                        .tint(.red)
                    }
            }
        }
    }
}

struct ListSwipeExample_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeExample()
    }
}
