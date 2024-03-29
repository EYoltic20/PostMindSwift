//
//  BitocoraView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 21/03/23.
//

import SwiftUI

struct BitocoraView: View {
    @State var listaDeActividades = [
        ActividadModelo("feliz", "Comer", "10:10"),
        ActividadModelo("enojado", "Pelear", "12:12"),
        ActividadModelo("enojado", "Pelear", "12:12"),
        ActividadModelo("feliz", "Comer", "10:10"),
        ActividadModelo("feliz", "Comer", "10:10")
    ]
    var body: some View {
        GeometryReader{geo in
            VStack(alignment:.center){
                VStack(alignment:.center){
                    Text("Actividad")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: geo.size.width)
                    GraficaView(emociones: emotions(listaDeActividades),emocionesCount: countOfEmotion(listaDeActividades))
                        .padding()
                }.frame(width: geo.size.width-20,height: geo.size.height/2.5)
                
//                MARK: -lista que desplegara las actividades
                ScrollView{
                    ForEach(listaDeActividades){ actividad in
                        ListaBitacoraView(color: actividad.color(), queHice: actividad.actividad, emocion: actividad.emocion,fecha:Date.now )
                            .frame(width: geo.size.width-30,height: geo.size.height/5)
                            
                    }
                    .frame(height:.infinity)
//                    .onDelete(perform: { IndexSet in
//                        listaDeActividades.remove(atOffsets: IndexSet)
//                    })
                    
                    
                }
                
                .listStyle(.inset)
                
            }.frame(width: geo.size.width,height: geo.size.height)
//            MARK : -Parte de Arriba
                .toolbar{
//                    MARK: -Boton de agregar rutina
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: AddNewTask(tareas: $listaDeActividades)){
                            Text("Agregar")
                        }
                    }
                    
                }
        }
    }
}

struct BitocoraView_Previews: PreviewProvider {
    static var previews: some View {
        BitocoraView()
    }
}
