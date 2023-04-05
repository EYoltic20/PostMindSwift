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
            VStack(){
                ScrollView{
                    Spacer()
                    HStack{
                        //                    MARK: -Bitocara
                        Spacer()
                        NavigationLink(destination: BitocoraView()){
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("azul1"))
                                .overlay{
                                    Text("Bitacora")
                                        .font(.title2)
                                        .foregroundColor(Color("negro"))
                                        .fontWeight(.semibold)
                                }
                        }
                        .frame(width:geo.size.width-240,height:geo.size.height/10)

                        //                    MARK: -Ayuda
                        Spacer()
                        Button{
                            
                        }label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("azul1"))
                                .overlay{
                                    Text("Ayuda")
                                        .font(.title2)
                                        .foregroundColor(Color("negro"))
                                        .fontWeight(.semibold)
                                }
                        }.frame(width:geo.size.width-240,height:geo.size.height/10)
                        Spacer()
                    }.frame(width:geo.size.width - 30,height: geo.size.height/6).padding()
                    //                MARK: -Grafica
                    Spacer()
                    
                    VStack{
                        Text("Contedo de Emociones")
                            .font(.title)
                            .fontWeight(.semibold)
                        ChartView()
                    }
                    .frame(width:geo.size.width-30,height: geo.size.height/2.6)
                    
                    
                }
            }
            .frame(maxWidth:geo.size.width,maxHeight: geo.size.height)
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
struct ChartView:View{
    var stats = [Stats(emocion: "Feliz", veces: 2),
                 Stats(emocion: "Enojado", veces: 1),
                 Stats(emocion: "Triste", veces: 5),
                 Stats(emocion: "Raro", veces: 3),
                 Stats(emocion: "Vacio", veces: 7),
                 
    ]
    var body: some View{
        GeometryReader{geo in
            VStack{
                Chart{
                    ForEach(stats,id: \.emocion){stat in
                        BarMark(x:.value("Emocion", stat.emocion), y:.value("Conteo", stat.veces) )
                            .foregroundStyle(returnColor(emocion: stat.emocion))
                    }
                }
            }
        }
    }
    
}

func returnColor(emocion:String)->Color{
    switch emocion{
    case "Feliz":
        return Color.green
    case "Enojado":
        return Color.red
    case "Triste":
        return Color.cyan
    case "Raro":
        return Color.indigo
    case "Vacio":
        return Color.mint
    default:
        return Color.black
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
