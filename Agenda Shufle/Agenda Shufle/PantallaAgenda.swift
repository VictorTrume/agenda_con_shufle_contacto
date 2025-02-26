//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//


import SwiftUI

let contactos = [
    ContactoAgenda(nombre: "Paco", telefono: "12345"),
    ContactoAgenda(nombre: "Paca", telefono: "12345"),
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Manuel", telefono: "12345"),
    ContactoAgenda(nombre: "Polloyon", telefono: "12345"),
    ContactoAgenda(nombre: "Waos", telefono: "12345"),
    ContactoAgenda(nombre: "Claudia", telefono: "12345"),
]

struct PantallaAgenda: View {
    var body: some View {
        
        List{
            VStack{
                ForEach(contactos){ contacto in
                    Text("\(contacto.nombre)")
                    ContactoPrevista()
                }
            }
            .background(Color.cyan)
            
        }
        
   

        
    }
}

#Preview {
    PantallaAgenda()
}
