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

    var boton_salir: () -> Void = {

        print("PARECE QUE TE HAS EQUIVOCADO")

    }

    var boton_agregar: (_ nombre: String, _ numero: String) -> Void = { nombre, numero in

        print("PARECE QUE TE HAS EQUIVOCADO")

    }
 
    var body: some View {

        ZStack {
            Color.black.opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Agregar contacto")
                    .font(.system(size: 35))
                    .shadow(color: .white, radius: 0.9)
                    .bold()
                    .foregroundColor(.white.opacity(0.9))
                Text(" ")
                    
                Text("Colocar un nombre para el contacto")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    
                    .bold()
                ZStack {
                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundColor(Color.white.opacity(1))
                        .shadow(color: .white, radius: 3)                        .padding(15)

                    TextField("Place holder", text: $nombre)

                        .foregroundColor(.black.opacity(0.6))

                        .padding(20)
           

                }
 
                

                Text("Coloque un numero telefonico")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.white)
                TextField("Place holder numeros", text: $numero_telefonico)
                    .background(.white.opacity(0.8))
                    .frame(height: 35)
                    .shadow(color: .white, radius: 3)
                    .padding(20)
 
                HStack {
                    Spacer()
                    Icono(tamaño: 75, ruta_icono: "person.crop.circle.badge.plus", padding: 10)
                        .foregroundColor(.white)
                        .shadow(color: .white, radius: 2)
                        .onTapGesture {
                            boton_agregar(nombre, numero_telefonico)

                        }
 
                    Spacer()
 
                    Icono(tamaño: 75, ruta_icono: "return")
                        .foregroundColor(.white)
                        .shadow(color: .white, radius: 2)
                    //.background(nombre == "" ? Color.red : Color.cyan)
                        .onTapGesture {
                            boton_salir()
                            
                        }
                    Spacer()

                }

                .padding()

            }

        }

    }

}
 
#Preview {

    pantallaAgregarContacto()

}

 
