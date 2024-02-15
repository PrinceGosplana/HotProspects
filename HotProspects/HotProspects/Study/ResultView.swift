//
//  ResultView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 15.02.2024.
//

import SwiftUI

struct ResultView: View {
    @State private var output = ""
    
    var body: some View {
        Text(output)
            .task {
                await fetchReadings()
            }
    }
    
    func fetchReadings() async {
        let fetchTask = Task {
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            output = "Found \(readings.count) readings"
        }
    }
}

#Preview {
    ResultView()
}
