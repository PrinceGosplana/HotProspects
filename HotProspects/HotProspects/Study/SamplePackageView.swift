//
//  SamplePackageView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 20.02.2024.
//

import SamplePackage
import SwiftUI

struct SamplePackageView: View {
    let possibleNumbers = 1...60
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.formatted()
    }
    
    var body: some View {
        Text(results)
    }
}

#Preview {
    SamplePackageView()
}
