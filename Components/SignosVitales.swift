//
//  Prueba3.swift
//  TESHelper
//
//  Created by JaLu NoVa on 2/12/24.
//
import SwiftUI

struct SignosVitales: View {
    // Lista de tuplas con nombre del elemento y el ícono del sistema
    let Items: [Navegacion] = [
        Navegacion(icono: "stethoscope.circle.fill", titulo: "Tensión arterial",  destination: AnyView(TablaTension())),
        Navegacion(icono: "lungs.fill", titulo: "Frecuancia respiratoria",  destination: AnyView(TablaRespiratoria())),
        Navegacion(icono: "bolt.heart.fill", titulo: "Frecuencia cardiaca",  destination: AnyView(TablaCardiaca())),
        Navegacion(icono: "medical.thermometer.fill", titulo: "Temperatura",  destination: AnyView(TablaTemperatura())),
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
            }.navigationTitle("Signos Vitales")
            
        }
    }
}

#Preview {
    SignosVitales()
}
