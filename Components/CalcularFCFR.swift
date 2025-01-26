//
//  Prueba2 Frec.swift
//  TESHelper
//
//  Created by JaLu NoVa on 16/1/25.
//

import SwiftUI

struct CalcularFCFR: View {
    @State private var tapCountCard: Int = 0 // Contador de pulsaciones
    @State private var tapCountResp: Int = 0 // Contador de respiraciones
    @State private var startTime: Date? // Hora de la primera pulsación
    @State private var currentTime: Date = Date() // Tiempo actual para medir PPM

    private var tapsPerMinuteCard: Double {
        // Calcula las pulsaciones por minuto
        guard let startTime = startTime else { return 0 }
        let elapsedTime = currentTime.timeIntervalSince(startTime) / 60
        return elapsedTime > 0 ? Double(tapCountCard) / elapsedTime : 0
    }
    
    private var tapsPerMinuteResp: Double {
        // Calcula las pulsaciones por minuto
        guard let startTime = startTime else { return 0 }
        let elapsedTime = currentTime.timeIntervalSince(startTime) / 60
        return elapsedTime > 0 ? Double(tapCountResp) / elapsedTime : 0
    }

    var body: some View {
        VStack {
            Text("Pulsaciones por Minuto")
                .font(.title)
                .bold()
            Text("(PPM)")
                .font(.title)
                .bold()

            // Mostrar el número de pulsaciones
            Text("Pulsaciones: \(tapCountCard)")
                .font(.title)
                .foregroundColor(.blue)

            // Mostrar las PPM calculadas
            Text("PPM: \(String(format: "%1.f", tapsPerMinuteCard))")
                .font(.title)
                .foregroundColor(.green)

            // Botón para contar pulsaciones
            Button(action: handleTapCard) {
                Text("Fr. Cardíaca")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Respiraciones por Minuto")
                .font(.title)
                .bold()
            Text("(PPM)e")
                .font(.title)
                .bold()
            
            // Mostrar el número de respiraciones
            Text("Pulsaciones: \(tapCountResp)")
                .font(.title)
                .foregroundColor(.blue)
            
            // Mostrar las RPM calculadas
            Text("RPM: \(String(format: "%1.f", tapsPerMinuteResp))")
                .font(.title)
                .foregroundColor(.green)
            
            // Botón para contar respiraciones
            Button(action: handleTapResp) {
                Text("Fr. Respiratoria")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }

            // Botón para reiniciar
            Button(action: resetCounter) {
                Text("Reiniciar")
                    .font(.title)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }.padding()
        .onAppear {
            startUpdatingTime()
        }
        Spacer()
    }

    // Maneja la lógica al pulsar el botón
    private func handleTapCard() {
        tapCountCard += 1
        if tapCountCard == 1 {
            // Registra el tiempo de la primera pulsación
            startTime = Date()
        }
    }
    
    private func handleTapResp() {
        tapCountResp += 1
        if tapCountResp == 1 {
            // Registra el tiempo de la primera pulsación
            startTime = Date()
        }
    }

    // Reinicia el contador y las PPM
    private func resetCounter() {
        tapCountCard = 0
        tapCountResp = 0
        startTime = nil
        currentTime = Date()
    }

    // Actualiza el tiempo actual periódicamente
    private func startUpdatingTime() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            currentTime = Date()
        }
    }
}

#Preview {
    CalcularFCFR()
}
