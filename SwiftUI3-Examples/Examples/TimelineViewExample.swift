//
//  TimelineViewExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 13.06.2021.
//

import SwiftUI

struct TimelineViewExample: View {
    
    private let emoji = ["😀", "😬", "😄", "🙂", "😗", "🤓", "😏", "😕", "😟", "😎", "😜", "😍", "🤪"]
    
    var body: some View {
        TimelineView(.periodic(from: .now, by: 0.2)) { timeline in
            Text(emoji.randomElement() ?? "")
                .font(.largeTitle)
                .scaleEffect(4)
        }
    }
}

struct TimelineViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TimelineViewExample()
    }
}
