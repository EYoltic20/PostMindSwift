//
//  TabView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 28/02/23.
//

import SwiftUI

struct TabStuffView: View {
    @State var  option = "chat"
    @State var isInit  = true
    var body: some View {
        GeometryReader{ geo in
            VStack{
                TabView(selection: $option){
                    //            MARK: - HOME
                    HomeView()
                        .tabItem{
                            Image(systemName: "house")
                                .resizable()
                                .frame(width: geo.size.width-300)
                                .foregroundColor(Color("negro"))
                                
                            
                        }.tag("home")
                    //            MARK: - HOME
                    ChatView()
                        .tabItem{
                            Image(systemName: "message.fill")
                                .frame(width: geo.size.width-300)
                                .foregroundColor(Color("negro"))
                            
                        }.tag("chat")
                }.accentColor(Color("azul2"))
            }.frame(maxWidth:geo.size.width,maxHeight: geo.size.height)
                .navigationBarBackButtonHidden(true)
                .sheet(isPresented:$isInit){
                    emotionsView(listo: $isInit)
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabStuffView()
    }
}
