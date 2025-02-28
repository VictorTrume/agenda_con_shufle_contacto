//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//


import SwiftUI

let contactos = [
    ContactoAgenda(nombre: "Paco", telefono: "12345"),
    ContactoAgenda(nombre: "Pacalagranpacaosi", telefono: "12345"),
    ContactoAgenda(nombre: "Juan el chido", telefono: "12345"),
    ContactoAgenda(nombre: "Manuel", telefono: "12345"),
    ContactoAgenda(nombre: "Polloyon", telefono: "12345"),
    ContactoAgenda(nombre: "Waos", telefono: "12345"),
    ContactoAgenda(nombre: "Claudia", telefono: "12345"),
    ContactoAgenda(nombre: "Pancrasio ", telefono: "12345"),
    ContactoAgenda(nombre: "Pancrasia", telefono: "12345"),
    ContactoAgenda(nombre: "Juanito", telefono: "12345"),
    ContactoAgenda(nombre: "Manolo", telefono: "12345"),
    ContactoAgenda(nombre: "Polloyon", telefono: "12345"),
    ContactoAgenda(nombre: "Waos", telefono: "12345"),
    ContactoAgenda(nombre: "Claudia", telefono: "12345"),
    
]

struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    var body: some View {
        
        ScrollView{
            VStack(spacing:10){
                ForEach(contactos){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar:
                        {print("Te envio saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .background(Color.cyan)
            .frame(width: largo_de_pantalla, height:
                    ancho_de_pantalla,alignment: Alignment.center)
            
        }
        .background(Color.green)

  
        
   

        
    }
}

#Preview {
    PantallaAgenda()
}
