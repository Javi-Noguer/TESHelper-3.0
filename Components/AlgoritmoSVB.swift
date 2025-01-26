//
//  AlgoritmoSVB.swift
//  TESHelper
//
//  Created by JaLu NoVa on 28/11/24.
//

import SwiftUI

struct AlgoritmoSVB: View {
    
    var body: some View {
        NavigationStack {
        VStack {
            HStack {
                NavigationLink(destination: Adulto()) {
                    Text("ADULTO")
                        .bold()
                        .font(.title)
                        .frame(width: 150, height: 50)
                        .background(Color.white)
                        .foregroundColor(.green)
                        .cornerRadius(10)
                        .padding()
                }
                NavigationLink(destination: Pediatrico()) {
                    Text("PEDIÁTRICO")
                        .bold()
                        .font(.title)
                        .frame(width: 170, height: 50)
                        .background(Color.white)
                        .foregroundColor(.green)
                        .cornerRadius(10)
                        .padding()
                }
            }
            Image("imaSVB")
                .resizable()
                .scaledToFit()
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundSVB)
            .toolbar {
                ToolbarItem(placement: .principal){
                    Text("Algoritmo SVB")
                        .foregroundColor(.white)
                        .font(.title)
                }
            }
        }
    }
}


#Preview {
    AlgoritmoSVB()
}

