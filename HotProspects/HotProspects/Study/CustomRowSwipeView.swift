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
                    Button("Send message", systemImage: "message") {
                        print("Hi")
                    }
                }
        }
    }
}

#Preview {
    CustomRowSwipeView()
}
