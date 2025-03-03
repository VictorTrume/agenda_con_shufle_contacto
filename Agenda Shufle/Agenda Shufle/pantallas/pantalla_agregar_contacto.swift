//
//  pantalla_agregar_contacto.swift
//  Agenda Shufle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct pantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    var body: some View {
        Text("Colocar la etiqueta del nombre")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(Color.cyan)
            TextField("Place holder", text: $nombre)
            
                .padding(10)
        }
        
        Text("Colocar el campo del numero telefonico")
        TextField("Place holder numeros", text: $numero_telefonico)
            .frame(height: 35)
            .padding(10)
        HStack{
            Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus")
            Spacer()
            Icono(tamaño: 65, ruta_icono: "return")
                .background(nombre == "" ? Color.red: Color.cyan)
          
        }
        .background(Color.cyan)
    }
}

#Preview {
    pantallaAgregarContacto()
}
