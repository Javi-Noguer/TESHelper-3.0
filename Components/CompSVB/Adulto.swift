//
//  Adulto.swift
//  TESHelper
//
//  Created by JaLu NoVa on 15/1/25.
//

import SwiftUI

struct Adulto: View {
    var body: some View {
        Text("ADULTO")
            .bold()
            .font(.title)
            .frame(width: 150, height: 50)
            .background(Color.white)
            .foregroundColor(.green)
            .cornerRadius(10)
        Image("SVBadul")
            .resizable()
            .scaledToFit()
            .padding()
    }
}

#Preview {
    Adulto()
}
