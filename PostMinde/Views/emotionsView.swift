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
    var body: some View {
        GeometryReader{geo in
            VStack(alignment:.center){
                Text("Te notamos enojado hoy")
                    .titleFont(30,.black)
                    
                
                
                Text("Es cierto?")
                    .titleFont(30,.black)
                    
                
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
                .frame(width: geo.size.width - 20 , height: geo.size.height/4)
                
                Text("Que actividad influyo en eso hoy?")
                    .titleFont(23,.black)
                    .padding()
                
                
                
                RoundRectangleTextField()
                    .overlay{
                        TextField("Escribe tu actividad",text: $notas)
                            .padding()
                    }.frame(width:geo.size.width-30,height: geo.size.height/3)
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
