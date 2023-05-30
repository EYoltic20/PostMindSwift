//
//  ProfileView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 02/05/23.
//

import SwiftUI

struct ProfileView: View {
    var user = UserModel(User: "Juan", email: "pedrito12@hotmail.com", password: "jkijijii")
    var opciones = [""]
    var body: some View {
        GeometryReader{geo in
            VStack(alignment:.center,spacing: 130){
                //                MARK: - PROFILE VIEW
                Group{
                    Rectangle()
                        .fill(Color("azul1"))
                        .ignoresSafeArea()
                        .frame(height:geo.size.height/4)
                        .overlay{
                            Image("perfil_dog")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:200,height:200)
                                .clipShape(Circle())
                                .offset(y:100)
                        }
                    
                    
                }

                
                Group{
                    VStack(alignment: .leading){
                        //                        MARK: -USER
                        HStack{
                            Circle()
                                .fill(Color("azul1"))
                                .frame(width:20,height: 20)
                            Text("User")
                                .foregroundColor(.black)
                                .font(.title3)
                                .fontWeight(.semibold)
                            Spacer()
                            Text(user.User)
                                .foregroundColor(.gray)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            
                        }
                        .padding()
                        Divider()
                        //                        MARK: -email
                        HStack{
                            Circle()
                                .fill(Color("azul1"))
                                .frame(width:20,height: 20)
                            Text("Email")
                                .foregroundColor(.black)
                                .font(.title3)
                                .fontWeight(.semibold)
                            Spacer()
                            Text(user.email)
                                .foregroundColor(.gray)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            
                        }
                        .padding()
                        Divider()
                        //                        MARK: -pasword
                        HStack{
                            Circle()
                                .fill(Color("azul1"))
                                .frame(width:20,height: 20)
                            Text("Password")
                                .foregroundColor(.black)
                                .font(.title3)
                                .fontWeight(.semibold)
                            Spacer()
                            Text(user.password)
                                .foregroundColor(.gray)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                        }
                        .padding()
                        Divider()
                    }.frame(width:geo.size.width)
                }
                Button{
                    
                }label: {
                    bottonView_stroke(text: "Cambiar contraseña").frame(width:geo.size.width-160,height:geo.size.height/13)
                }
                .offset(x:77)
                
                Spacer()
            }.frame(width:geo.size.width,height:geo.size.height)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
