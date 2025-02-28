//
//  contacto_prevista.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contacto_prueba =  ContactoAgenda(nombre: "Pacalagranpacaosi", telefono: "12345")

struct ContactoPrevista: View {
    var contacto_a_mostrar: ContactoAgenda
    var al_pulsar: () -> Void = {print("No se ha implementado")}
    
    let esquinas_redondeadas = CGSize(width: 55, height: 55)
    
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Spacer()
            VStack{
                Image("Imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 65,alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize:
                                               esquinas_redondeadas))
                    .background(Color.blue)
            }.background(Color.white)
            Spacer()
            VStack(alignment: HorizontalAlignment.leading){
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }.background(Color.gray)
                .frame(width: 150)
            
            Spacer()
            
        }
        .frame(width: 250)
        .background(Color.red)
        .onTapGesture {
            al_pulsar()
        }
              
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
