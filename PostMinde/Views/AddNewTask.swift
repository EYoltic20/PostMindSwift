//
//  AddNewTask.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 22/03/23.
//

import SwiftUI

struct AddNewTask: View {
    @Binding var tareas:[ActividadModelo]
    @State var color = ""
    @State var colorC = Color.gray
    @State var newtask = ""
    @Environment  (\.dismiss) var dismiss
    var body: some View {
        GeometryReader{geo in
            VStack(alignment: .center){
                Spacer()
                Text("Que actividad realizaste?")
                    .titleFont(30, .black)
                    .padding()
                Spacer()
                TextField("Nueva Tarea",text:$newtask)
                    .textFieldFont(25, .black)
                    
                    .padding(.leading,50)
                HStack{
                    Button{
                        color = "feliz"
                        colorC = Color.green
                    }label: {
                        Text("☺️")
                            .font(.system(size: 60))

                    }
                    Button{
                        color = "asco"
                        colorC = Color.yellow
                    }label: {
                        Text("🤢")
                            .font(.system(size: 60))
                    }
                    Button{
                        color = "enojado"
                        colorC = Color.red
                    }label: {
                        Text("😡")
                            .font(.system(size: 60))
                    }
                    Button{
                        color = "aburrido"
                        colorC = Color.purple
                    }label: {
                        Text("🥱")
                            .font(.system(size: 60))
                    }
                    
             
                }
                .frame(width: geo.size.width - 20 , height: geo.size.height/4)
                Circle().fill(colorC)
                    .frame(width:geo.size.width/5,height:geo.size.height/10)
                    
                Spacer()
                Button{
                    tareas.insert(ActividadModelo(color, newtask, "10:10"), at: 0)
                    dismiss()
                }label:{
                    btnView_lleno(text: "Agregar").frame(width: geo.size.width-20,height:geo.size.height/11)
                }
                Spacer()
                
                
            }.frame(width:geo.size.width,height: geo.size.height)
        }
    }
}

//struct AddNewTask_Previews: PreviewProvider {
//    static var previews: some View {
//        AddNewTask()
//    }
//}
