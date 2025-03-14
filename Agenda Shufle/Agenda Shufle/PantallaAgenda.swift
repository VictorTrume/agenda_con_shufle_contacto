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

enum PantallasDisponibles: String, Identifiable{
    
    case pantalla_agregar, pantalla_aleatorio
    
    var id: String {rawValue}
    
    
}
 

struct PantallaAgenda: View {
    
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Paco", telefono: "6561234567"),
        ContactoAgenda(nombre: "Andres", telefono: "656789023"),
        ContactoAgenda(nombre: "Roberto", telefono: "6564567890"),
        ContactoAgenda(nombre: "TuJefe", telefono: "6563245678"),
        ContactoAgenda(nombre: "Mariano", telefono: "6563409876"),
        ContactoAgenda(nombre: "Costco", telefono: "6564321234"),
        
    
    ]
    
    @State var pantalla_a_mostrar:PantallasDisponibles?
    @State private var contacto_ganador: ContactoAgenda? = nil
    
    var body: some View {
     
        NavigationStack{
            ScrollView{
                Text("Lista de Contactos")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .shadow(color: .white, radius: 1)
                    .bold()
                    
                
                    .foregroundColor(.white.opacity(0.9))
                VStack(spacing:10){
                    ForEach(contactos_actuales){ contacto in
                        NavigationLink{
                            
                            
                                Text("Mi contacto es")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .shadow(color: .white, radius: 1)
                                    .bold()
                                    .background(Color.black.opacity(0.8))
                              
                                ContactoPrevista(contacto_a_mostrar: contacto)
                                    .padding(25)
                                    .shadow(color: .white, radius: 2)
                                    .background(Color.black.opacity(0.8))
                   
                                    
                            
                          
                            
                        } 
                        
                        label :{
                            ContactoPrevista(contacto_a_mostrar: contacto)
                        }
                        
                    }
                    
                }
                
                .frame(alignment: Alignment.center)
                .padding(30)
                .shadow(color: .white, radius: 4)
                //.background(Color.black.opacity(0.5))
            }
            
            .background(Color.black.opacity(0.8))
        }
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.black)
                    .shadow(color: .white, radius: 5)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.black
                    )
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .background(Color.black)
                    .font(.system(size:50))
                
                //.offset(x: 0, y: -25)
                
            }
            
            .padding(15)
            .onTapGesture {
                print("Aun me falta esta parte")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_agregar
            }
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.black)
                    .shadow(color: .white, radius: 5)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.black)
                Image(systemName: "shuffle")
                    .foregroundColor(.white)
                    .background(Color.black)
                    .font(.system(size:50))
                //.offset(x: 0, y: -25)
                
            }
            
            .padding(15)
            .onTapGesture {
                if let contacto_seleccionado = contactos_actuales.randomElement(){
                    contacto_ganador = contacto_seleccionado
                    
                    pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
                }
            }
            
        }
        .background(Color.black.opacity(0.9))
        

        .sheet(isPresented: $mostrar_pantalla_agregar_contacto) {
            
        }
        
        .sheet(item: $pantalla_a_mostrar){
            pantalla in 
            switch(pantalla){
            case.pantalla_agregar:
                pantallaAgregarContacto(
                    boton_salir: {
                        pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
                },
                    boton_agregar: {nombre, numero in
                    let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                    contactos_actuales.append(contacto_nuevo)
                    mostrar_pantalla_agregar_contacto.toggle()
                }
            )
            case.pantalla_aleatorio:
                if let contacto = contacto_ganador {
                    pantalla_del_ganador(contacto_a_molestar: contacto)
                }
                else{
                    Text("No seleccionaste nada")
                }
                
            }
        }
        
    }
}

#Preview {
    PantallaAgenda()
}
