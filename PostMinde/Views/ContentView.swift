//
//  ContentView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    @State var islogged = false
    @State var registerGoogle = false
    @State var registerOutlook = false
    var body: some View {
        GeometryReader{ geo in
            NavigationView{
                
                VStack(spacing:50){
                    NavigationLink(destination: TabStuffView(), isActive: $islogged){
                        EmptyView()
                    }
//                  MARK: -  Titulo
                    Text("Log In")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("negro"))
//                  MARK:-  Text fields
                    VStack{
                        RoundRectangleTextField()
                            .overlay{
                                TextField("E-mail",text: $email).padding()
                            }
                            .frame(height:geo.size.height/11)
                        RoundRectangleTextField()
                            .overlay{
                                HStack{
                                    SecureField("Contaseña",text: $password)
                                    Image(systemName: "eye.slash")
                                }.padding()
                            }.frame(height:geo.size.height/11)
                    }.frame(width: geo.size.width-50)
                        .padding()
//                    MARK: -Buttones
                    VStack{
//                        MARK: -LOGIN BUTTON
                        Button{
                            islogged.toggle()
                        }label: {
                            btnView(text: "Log In")
                                .frame(height:geo.size.height/12)
                        }
//                        MARK: -REGISTRARTE
                        Button{
                            
                        }label: {
                            Text("Olvidaste tu contraseña?").padding()
                                .foregroundColor(Color("azul3"))
                        }
//                      MARK: - Registro
                        Text("Registro")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("negro"))
                        HStack{
//                            MARK: - GOOGLE
                            Button{
                                
                            }label: {
                                btnView(text: "Google")
                                    .frame(width:geo.size.width-220,height:geo.size.height/12)
                            }
//                        MARK: - OUTLOOK
                            Button{
                                
                            }label: {
                                btnView(text: "Outlook")
                                    .frame(width:geo.size.width-220,height:geo.size.height/12)
                            }
                        }.frame(width: geo.size.width-50)
                            .padding()
                    }.frame(width: geo.size.width-50)
                        .padding()
                    
                }.frame(maxWidth:geo.size.width,maxHeight: geo.size.height)
                    .background{
                        Color.white.ignoresSafeArea()
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
