//
//  CustomRowSwipeView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 18.02.2024.
//

import SwiftUI

struct CustomRowSwipeView: View {
    var body: some View {
        List {
            Text("Taylor Swift")
                .swipeActions {
                    Button("Delete", systemImage: "minus.cirle", role: .destructive) {
                        print("Delete")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button("Pin", systemImage: "pin") {
                        print("Pinning")
                    }
                }
        }
    }
}

#Preview {
    CustomRowSwipeView()
}
