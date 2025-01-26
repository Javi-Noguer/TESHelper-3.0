//
//  TablaTension.swift
//  TESHelper
//
//  Created by JaLu NoVa on 14/1/25.
//

import SwiftUI

struct TablaCardiaca: View {
    var body: some View {
        VStack {
            Text("Tabla Frecuencia Cardíaca")
                .font(.title)
        }
        Image("cardiaca")
            .resizable()
            .scaledToFit()
            .padding()
        Spacer()
    }
}

#Preview {
    TablaCardiaca()
}
