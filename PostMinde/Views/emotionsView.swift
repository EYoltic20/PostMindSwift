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
                    .titleFont(30)
                    .foregroundColor(.black)
                    
                Text("Es cierto?")
                    .titleFont(30)
                Text("Que actividad influyo en eso hoy?")
                    .titleFont(30)
                RoundRectangleTextField()
                .overlay{
                    TextField("Escribe tu actividad",text: $notas)
                }.frame(width:geo.size.width-80,height: geo.size.height/4)
                    .padding()
                Button{
                    listo.toggle()
                }label: {
                    bottonView_stroke(text: "Listo")
                        .frame(width:geo.size.width-80,height: geo.size.height/12)
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
