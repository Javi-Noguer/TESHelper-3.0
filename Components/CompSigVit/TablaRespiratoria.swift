//
//  TablaTension.swift
//  TESHelper
//
//  Created by JaLu NoVa on 14/1/25.
//

import SwiftUI

struct TablaRespiratoria: View {
    var body: some View {
        VStack {
            Text("Tabla Frecuencia Respiratoria")
                .font(.title)
        }
        Image("respiratoria")
            .resizable()
            .scaledToFit()
            .padding()
        Spacer()
    }
}

#Preview {
    TablaRespiratoria()
}
