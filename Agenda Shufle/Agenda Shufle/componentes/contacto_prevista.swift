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
                    .background(Color.black.opacity(1))
                    
            }.background(Color.white)
            
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10){
                Text(contacto_a_mostrar.nombre)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .shadow(color: .white, radius: 1)
                    .bold()
                Text(contacto_a_mostrar.telefono)
                    .foregroundColor(.white)
                    .shadow(color: .white, radius: 1)
            }
            
            .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.black.opacity(1))
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(1))
        //.clipShape(Rectangle())
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        /*
        .onTapGesture {
            al_pulsar()
        }
         */
              
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
