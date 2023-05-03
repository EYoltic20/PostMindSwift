//
//  HomeView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 28/02/23.
//

import SwiftUI
import Charts
struct HomeView: View {
    
    var body: some View {
        GeometryReader{geo in
            
            VStack(alignment:.leading){
                
                Text("Bienvendio Juan")
                    .titleFont(35, Color("azul4"))
                    .padding()
                    .padding(.leading,10)
                    
                    
                //                MARK: -Las dos opciones principales
                ScrollView{
                    VStack(alignment:.leading){
                        Text("Mis Actividades")
                            .titleFont(30, .black)
                            .padding()
                        
                    
                        NavigationLink(destination:BitocoraView()){
                            btnView_Cuadrado(text: "Mi Actvidad")
                        }
                        
                        .frame(width: geo.size.width-50,height: geo.size.height/8)
                        .padding()
                        Text("Mi ayuda")
                            .titleFont(30, .black)
                            .padding()
                            
                        btnView_Cuadrado(text: "Ayuda")
                            .frame(width: geo.size.width-50,height: geo.size.height/8)
                            .padding()
                        
                        Text("Mi lugar seguro")
                            .titleFont(30, .black)
                            .padding()
                        HStack{
                            Spacer()
                            btnView_Cuadrado(text: "Mi registro emocional")
                                .frame(width: geo.size.width/2.2,height: geo.size.height/11)
                            Spacer()
                            btnView_Cuadrado(text: "Mi afirmacion de hoy")
                                .frame(width: geo.size.width/2.2,height: geo.size.height/11)
                            Spacer()
                        }.frame(width:geo.size.width)
                        HStack{
                            Spacer()
                            btnView_Cuadrado(text: "Hora de relajarme")
                                .frame(width: geo.size.width/2.2,height: geo.size.height/11)
                            Spacer()
                            btnView_Cuadrado(text: "MI gratitud de hoy")
                                .frame(width: geo.size.width/2.2,height: geo.size.height/11)
                            Spacer()
                        }.frame(width:geo.size.width)
                            
                    }.frame(width:geo.size.width)
                        .padding()
                    
                
                    
                }
             Spacer()
            }
            .frame(width:geo.size.width,height: geo.size.height)
            .background{
                Color.white.ignoresSafeArea()
            }
            .navigationTitle("Post Mind")
        }
    }
}
struct Stats{
    let emocion:String
    let veces:Int
}
//MARK: -CHARTVIEW




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
