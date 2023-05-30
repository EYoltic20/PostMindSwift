//
//  emotionsView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 04/04/23.
//

import SwiftUI

struct emotionsView: View {
    @Binding var listo : Bool
    @State var notas = ""
    @State var estado = ""
    var body: some View {
        GeometryReader{geo in
            VStack(alignment:.center){
                Text("Te notamos enojado hoy")
                    .titleFont(30,.black)
                    
                
                
                Text("Es cierto?")
                    .titleFont(30,.black)
                    
//                MARK: - Botones de Emociones
                Group{
                    HStack{
                        Button{
                            
                        }label: {
                            Text("☺️")
                                .font(.system(size: 60))
                            
                        }
                        Button{
                            
                        }label: {
                            Text("🤢")
                                .font(.system(size: 60))
                        }
                        Button{
                            
                        }label: {
                            Text("😡")
                                .font(.system(size: 60))
                        }
                        Button{
                            
                        }label: {
                            Text("🥱")
                                .font(.system(size: 60))
                        }
                        
                        
                    }
                }
                .frame(width: geo.size.width - 20 , height: geo.size.height/4)
//                MARK: -BTONES DE ESTADO
                Group{
                    HStack{
                        Button{
                            estado = "Agradable"
                        }label: {
                            bottonView_stroke(text: "Agradable").frame(width:geo.size.width/3,height:geo.size.height/13)
                        }
                        Button{
                            estado = "Satisfeccio"
                        }label: {
                            bottonView_stroke(text: "Satisfeccio").frame(width:geo.size.width/3.3,height:geo.size.height/13)
                        }
                        Button{
                            estado = "Feliz"
                        }label: {
                            bottonView_stroke(text: "Feliz").frame(width:geo.size.width/3.3,height:geo.size.height/13)
                        }
                    }
                    
                }
                Group{
                    HStack{
                        Button{
                            estado = "Entusiasta"
                        }label: {
                            bottonView_stroke(text: "Entusiasta").frame(width:geo.size.width/3.3,height:geo.size.height/15)
                        }
                        Button{
                            estado = "Concentrado"
                        }label: {
                            bottonView_stroke(text: "Concentrado").frame(width:geo.size.width/3.3,height:geo.size.height/15)
                        }
                        Button{
                            estado = "Positivo"
                        }label: {
                            bottonView_stroke(text: "Positivo").frame(width:geo.size.width/3.3,height:geo.size.height/15)
                        }
                    }
                }
                Group{
                    HStack{
                        Button{
                            estado = "Euforico"
                        }label: {
                            bottonView_stroke(text: "Euforico").frame(width:geo.size.width/3.3,height:geo.size.height/15)
                        }
                        Button{
                            estado = "Emocionado"
                        }label: {
                            bottonView_stroke(text: "Emocionado").frame(width:geo.size.width/3.3,height:geo.size.height/15)
                        }
                        Button{
                            estado = "Energietico"
                        }label: {
                            bottonView_stroke(text: "Energietico").frame(width:geo.size.width/3.3,height:geo.size.height/15)
                        }
                    }
                }
                
                
                Text("Que actividad influyo en eso hoy?")
                    .titleFont(23,.black)
                    .padding()
                
                
                
                RoundRectangleTextField()
                    .overlay{
                        TextField("Escribe tu actividad",text: $notas)
                            .padding()
                    }.frame(width:geo.size.width-30,height: geo.size.height/10)
                    .padding()
                Button{
                    listo.toggle()
                }label: {
                    bottonView_stroke(text: "Listo")
                        .frame(width:geo.size.width-80,height: geo.size.height/13)
                }
                
                
            }.frame(width:geo.size.width,height: geo.size.height)
        }
    }
}

//struct emotionsView_Previews: PreviewProvider {
//    @State var x = true
//    static var previews: some View {
//        emotionsView(listo: $x)
//    }
//}
