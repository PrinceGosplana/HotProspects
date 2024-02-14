//
//  MultipleSelectionView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 14.02.2024.
//

import SwiftUI

struct MultipleSelectionView: View {
    let users = ["Totoro", "Chany", "BoJack", "Dwarf"]
    
    var body: some View {
        List(users, id: \.self) { user in
            Text(user)
        }
    }
}

#Preview {
    MultipleSelectionView()
}
