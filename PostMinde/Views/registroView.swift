//
//  registroView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 04/04/23.
//

import SwiftUI

struct registroView: View {
    @State var nombre = ""
    @State var email = ""
    @State var password = ""
    @State var onTouchEmail = false
    @State var verContra = false
    var body: some View {
        GeometryReader{geo in
            VStack{
                Text("BlueMate")
                    .titleFont(nil,Color("azul4"))
                Spacer()
                //                MARK: -Nombre
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("azul1"),lineWidth: 2)
                    .overlay{
                        HStack{
                            Image(systemName: "person").foregroundColor(Color("azul2"))
                            TextField("Nombre", text: $nombre)
                        }.padding()
                        
                    }.frame(width:geo.size.width-50,height: geo.size.height/12)
                    .padding()
                //                MARK: -EMAIl
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("azul1"),lineWidth: 2)
                    .overlay{
                        HStack{
                            Image(systemName: "person").foregroundColor(Color("azul2"))
                            TextField("Email", text: $email)
                        }.padding()
                        
                    }.frame(width:geo.size.width-50,height: geo.size.height/12)
                    .padding()
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("azul1"),lineWidth: 2)
                    .overlay{
                        HStack{
                            Image(systemName: "lock").foregroundColor(Color("azul2"))
                            if(verContra){
                                TextField("password", text: $password)
                            }else{
                                SecureField("password", text: $password)
                            }
                            Button{
                                verContra.toggle()
                            }label: {
                                Image(systemName:verContra ? "eye": "eye.slash").foregroundColor(Color("azul2"))
                            }
                        }.padding()
                        
                    }.frame(width:geo.size.width-50,height: geo.size.height/12)
                    .padding()
                Spacer()
                NavigationLink(destination:TabStuffView()){
                    btnView_lleno(text: "Registrar")
                        .frame(width: geo.size.width-50,height:geo.size.height/15).padding(20)
                }
                
            }.frame(width:geo.size.width,height: geo.size.height)
        }
    }
}

struct registroView_Previews: PreviewProvider {
    static var previews: some View {
        registroView()
    }
}
