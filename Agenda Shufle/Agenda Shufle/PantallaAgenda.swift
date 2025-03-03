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
            
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.cyan)
            
        }
        .background(Color.green)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan
                    )
                Image(systemName: "plus")
                    .background(Color.red)
                    //.offset(x: 0, y: -25)
                
            }
            .padding(15)
            .onTapGesture {
                print("Aun me falta esta parte")
            }
            Spacer()
           
            ZStack{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "shuffle")
                    .background(Color.red)
                    //.offset(x: 0, y: -25)
                
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intent para lanzar la llamada")
            }
        }
        
    }
}

#Preview {
    PantallaAgenda()
}
