//
//  MenuView.swift
//  TESHelper
//
//  Created by JaLu NoVa on 28/11/24.
//

import SwiftUI

struct MenuView: View {
    
    let Items: [Navegacion] = [
        Navegacion(icono: "waveform.path.ecg", titulo: "Signos Vitales",  destination: AnyView(SignosVitales())),
        Navegacion(icono: "heart.text.clipboard", titulo: "Algoritmo SVB",  destination: AnyView(AlgoritmoSVB())),
        Navegacion(icono: "stethoscope", titulo: "Calcular FC/FR",  destination: AnyView(CalcularFCFR())),
        Navegacion(icono: "lungs", titulo: "Cálculo Oxígeno",  destination: AnyView(CalculoOxigeno())),
    ]
    
        var body: some View {
            NavigationStack {
                List(Items) { item in
                    NavigationLink(destination: item.destination){
                        HStack {
                            Image(systemName: item.icono as! String)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(.trailing, 10)
                            Text(item.titulo)
                                .font(.headline)
                        }.padding()
                    }
                }.navigationTitle("TESHelper")
                
            }
        }
    }

#Preview {
    MenuView()
}
