//
//  ImageInterpolationView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 16.02.2024.
//

import SwiftUI

struct ImageInterpolationView: View {
    var body: some View {
        Image(.example)
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .background(.black)
    }
}

#Preview {
    ImageInterpolationView()
}
