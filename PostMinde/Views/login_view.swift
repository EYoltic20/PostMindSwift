//
//  login_view.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 04/04/23.
//

import SwiftUI

struct login_view: View {
    @State var user = ""
    @State var password = ""
    @State var onTouchEmail = false
    @State var verContra = false
    var body: some View {
        GeometryReader{geo in
            VStack(spacing:20){
                
                Text("BlueMate")
                    .titleFont(nil)
                Spacer()
//                MARK: -USERNAME
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("azul1"),lineWidth: 2)
                    .overlay{
                        HStack{
                            Image(systemName: "person").foregroundColor(Color("azul2"))
                            TextField("Email", text: $user)
                        }.padding()
                        
                    }.frame(width:geo.size.width-50,height: geo.size.height/12)
                    .padding()
                
//                MARK: -PASSWORD
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
                    btnView_lleno(text: "Login")
                        .frame(width: geo.size.width-50,height:geo.size.height/15).padding(20)
                }
                
            }.frame(width:geo.size.width,height: geo.size.height)
        }
    }
}

struct login_view_Previews: PreviewProvider {
    static var previews: some View {
        login_view()
    }
}
