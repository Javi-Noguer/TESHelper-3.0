//
//  PruebaOxigeno.swift
//  TESHelper
//
//  Created by JaLu NoVa on 16/1/25.
//

import SwiftUI

struct CalculoOxigeno: View {
    @State private var bottleCapacity: String = "" // Entrada de la capacidad de la botella en litros
    @State private var bottlePresure: String = "" // Entrada de la presion de la botella en bares
    @State private var oxigenConsum: String = ""// Entrada del consumo en litros por minuto

    private var calculo: Double {
        // Convierte las entradas a Double y hace el cálculo
        let value1 = Double(bottleCapacity) ?? 0
        let value2 = Double(bottlePresure) ?? 0
        let value3 = Double(oxigenConsum) ?? 0
        return value1 * (value2 - 20) / value3 // Se le resta 20 bares de presión residual
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Cálculo de Oxígeno")
                .font(.largeTitle)
                .bold()

            // Entrada capacidad de la botella
            HStack {
                Image("BoteOxig")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                Text("Capacidad:")
                TextField("Introduce un número", text: $bottleCapacity)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)// Teclado numérico
                Text("litros")
            }
            .padding()

            // Entrada presión de la botella
            HStack {
                Image("manoReduc")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                Text("Presión:")
                TextField("Introduce un número", text: $bottlePresure)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                Text("bares")
            }
            .padding()
            
            // Entrada consumo de paciente
            HStack {
                Image("caudalOxig")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                Text("Consumo:")
                TextField("Introduce un número", text: $oxigenConsum)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                Text("l/min")
            }
            .padding()

            // Resultado del cáculo
            Text("Tiempo de oxigeno: \(String(format: "%1.f", calculo)) minutos")
                .font(.title)
                .foregroundColor(.blue)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    CalculoOxigeno()
}
