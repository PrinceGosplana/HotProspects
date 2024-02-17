//
//  ContextMenuView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 17.02.2024.
//

import SwiftUI

struct ContextMenuView: View {
    @State private var backgroundColor = Color.red
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .background(backgroundColor)
        
        Text("Change Color")
            .padding()
            .contextMenu {
                Button("Red") {
                    backgroundColor = .red
                }
                Button("Green") {
                    backgroundColor = .green
                }
                Button("Blue") {
                    backgroundColor = .blue
                }
            }
    }
}

#Preview {
    ContextMenuView()
}
