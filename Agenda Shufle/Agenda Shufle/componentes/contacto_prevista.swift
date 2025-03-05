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
    
    let esquinas_redondeadas = CGSize(width: 20, height: 55)
    
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 10){
            
            Spacer()
            
            VStack{
                Image("Imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100,alignment: .center)
                    .clipShape(Circle())
                    .background(Color.gray)
            }.background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10){
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }
            
            .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray)
        //.clipShape(Rectangle())
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        
        .onTapGesture {
            al_pulsar()
        }
              
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
