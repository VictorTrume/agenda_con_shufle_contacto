//
//  contacto_agenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct ContactoAgenda: Identifiable {
    var nombre: String
    var telefono: String
    var id : String { nombre }
}
/*
var nombre = "Pancrasio Lopez"

var _nombre: String

var nombre: set{
    let nombre_validado = filtrar_palabras(value):
    nombre = nombre_validado
}get{
    return nombre.split(" ")[0]
}
 */



