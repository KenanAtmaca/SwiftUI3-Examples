//
//  RefreshableExample.swift
//  SwiftUI3-Examples
//
//  Created by Kenan Atmaca on 29.09.2021.
//

import SwiftUI

struct RefreshableExample: View {
    
    var body: some View {
        RefreshableScrollView {
            ForEach(0...99, id: \.self) { _ in
                ListRowView(title: "Hello World!", image: "globe")
            }
        } onRefresh: {
            print("Refreshed..")
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ListRowView: View {
    
    var title: String
    var image: String
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: image)
                .resizable()
                .frame(width: 24, height: 24)
            
            Text(title)
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.black)
        }
    }
}

struct RefreshableScrollView<Content: View>: View {
    
    var content: Content
    var onRefresh: () -> Void
    
    init(tintColor: Color = .black, @ViewBuilder content: @escaping () -> Content, onRefresh: @escaping () -> Void) {
        self.content = content()
        self.onRefresh = onRefresh
        UIRefreshControl.appearance().tintColor = UIColor(tintColor)
    }
    
    var body: some View {
        List {
            content
                .listRowSeparatorTint(Color.clear)
                .listRowBackground(Color.clear)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
        .listStyle(.plain)
        .refreshable {
            onRefresh()
        }
    }
}

struct RefreshableExample_Previews: PreviewProvider {
    static var previews: some View {
        RefreshableExample()
    }
}
