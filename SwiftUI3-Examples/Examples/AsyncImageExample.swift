//
//  AsyncImage.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 13.06.2021.
//

import SwiftUI

struct AsyncImageExample: View {
    
    let itemUrl: URL = URL(string: "https://ios.cafe/wp-content/uploads/2021/09/swiftui-3.png")!
    
    var body: some View {
        VStack {
            AsyncImage(url: itemUrl) { itemImage in
                if let image = itemImage.image {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                        .cornerRadius(10)
                        .clipped()
                } else {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .foregroundColor(.black)
                        .scaleEffect(1.5)
                }
            }
        }
    }
}

struct AsyncImageExample_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageExample()
    }
}
