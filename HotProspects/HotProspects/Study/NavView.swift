//
//  NavView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 14.02.2024.
//

import SwiftUI

struct NavView: View {
    @State private var selectedTab = "One"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Button("Show tab 2") {
                selectedTab = "Two"
            }
            .tabItem { Label("One", systemImage: "star")
            }
            .tag("One")
            
            Text("Tab 2")
                .tabItem { Label("Two", systemImage: "circle")
                }
                .tag("Two")
        }
    }
}

#Preview {
    NavView()
}
