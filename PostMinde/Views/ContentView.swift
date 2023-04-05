//
//  ContentView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geo in
            NavigationView{
                VStack(alignment:.center,spacing: 10){
//                    MARK: -LOGO
                    Spacer()
                    VStack(){
                        Text("Hola")
                            .titleFont(nil,Color("azul4"))
                            
                        Text("Soy BlueMate")
                            .titleFont(nil,Color("azul4"))
                        Image("blue_mate")
                            .resizable()
                            .scaledToFill()
                    }.frame(width:geo.size.width-50,height: geo.size.height/3)
                        .padding(.top,50)
//                    MARK: -BOTON LOGIN
                    Spacer()
                    NavigationLink(destination:login_view()){
                        btnView_lleno(text: "Login").frame(width: geo.size.width-50,height:geo.size.height/15).padding(20)
                    }
                    //                    MARK: -BOTON REGISTRO
                    NavigationLink(destination:registroView()){
                        btnView_lleno(text: "Resgistrar").frame(width: geo.size.width-50,height:geo.size.height/15).padding(20)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
