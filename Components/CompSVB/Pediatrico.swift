//
//  Adulto.swift
//  TESHelper
//
//  Created by JaLu NoVa on 15/1/25.
//

import SwiftUI

struct Pediatrico: View {
    var body: some View {
        Text("PEDIÁTRICO")
            .bold()
            .font(.title)
            .frame(width: 200, height: 50)
            .background(Color.white)
            .foregroundColor(.green)
            .cornerRadius(10)
        Image("SVBpedi")
            .resizable()
            .scaledToFit()
            .padding()
    }
}

#Preview {
    Pediatrico()
}
