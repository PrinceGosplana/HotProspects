//
//  MeView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 20.02.2024.
//

import SwiftUI

struct MeView: View {
    @AppStorage("name") private var name = "Anonymous"
    @AppStorage("emailAddress") private var emailAddress = "you@email.address"
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                    .textContentType(.name)
                    .font(.title)
                
                TextField("Email address", text: $emailAddress)
                    .textContentType(.emailAddress)
                    .font(.title)
            }
            .navigationTitle("Your code")
        }
    }
}

#Preview {
    MeView()
}
