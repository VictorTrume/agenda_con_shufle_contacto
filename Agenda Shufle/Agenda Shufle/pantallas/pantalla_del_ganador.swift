//
//  pantalla_del_ganador.swift
//  Agenda Shufle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Telefonico", telefono: "65612345678")

struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        Spacer()
        
        ZStack{
            Color.black.opacity(0.8)
            Circle()
                .frame(width: 0)
                .background(Color.black.opacity(0.8))
          
            Image("Imagen")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .shadow(color: .white, radius: 20)
            
            
        }
        Spacer()
       Spacer()
      
        
        Text(contacto_a_molestar.nombre)
            .foregroundColor(.white)
            .font(.system(size: 40))
            .shadow(color: .white, radius: 1)
            .bold()
            .background(Color.black.opacity(0.8))
      
        Text(contacto_a_molestar.telefono)
            .foregroundColor(.white)
            .font(.system(size: 20))
            .shadow(color: .white, radius: 1)
            .bold()
            .background(Color.black.opacity(0.8))
        Spacer()
        Spacer()
    }

}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
