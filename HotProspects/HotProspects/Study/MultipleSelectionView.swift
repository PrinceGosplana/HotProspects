//
//  MultipleSelectionView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 14.02.2024.
//

import SwiftUI

struct MultipleSelectionView: View {
    let users = ["Totoro", "Chany", "BoJack", "Dwarf"]
    @State private var selection = Set<String>()
    
    var body: some View {
        List(users, id: \.self, selection: $selection) { user in
            Text(user)
        }
        
        if selection.isEmpty == false {
            Text("You selected \(selection.formatted())")
        }
        
        EditButton()
    }
}

#Preview {
    MultipleSelectionView()
}
