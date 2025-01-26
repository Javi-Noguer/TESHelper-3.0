//
//  TablaTension.swift
//  TESHelper
//
//  Created by JaLu NoVa on 14/1/25.
//

import SwiftUI

struct TablaTension: View {
    var body: some View {
        VStack {
            Text("Tabla Tensión Arterial")
                .font(.title)
        }
        Image("tension")
            .resizable()
            .scaledToFit()
            .padding()
        Spacer()
    }
}

#Preview {
    TablaTension()
}
