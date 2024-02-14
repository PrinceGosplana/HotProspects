//
//  NavView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 14.02.2024.
//

import SwiftUI

struct NavView: View {
    var body: some View {
        TabView {
            Text("Tab 1")
                .tabItem { Label("One", systemImage: "star") }
            Text("Tab 2")
                .tabItem { Label("Two", systemImage: "circle") }
        }
    }
}

#Preview {
    NavView()
}
