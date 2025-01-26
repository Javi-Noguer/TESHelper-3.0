//
//  TablaTension.swift
//  TESHelper
//
//  Created by JaLu NoVa on 14/1/25.
//

import SwiftUI

struct TablaTemperatura: View {
    var body: some View {
        VStack {
            Text("Tabla Temperatura")
                .font(.title)
        }
        Image("temperatura")
            .resizable()
            .scaledToFit()
            .padding()
        Spacer()
    }
}

#Preview {
    TablaTemperatura()
}
