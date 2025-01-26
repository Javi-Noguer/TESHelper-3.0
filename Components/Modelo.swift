//
//  Modelo.swift
//  TESHelper
//
//  Created by JaLu NoVa on 14/1/25.
//

import Foundation
import SwiftUICore

struct Navegacion: Identifiable {
    let id = UUID()
    let icono: Any
    let titulo: String
    let destination: AnyView
}
