//
//  GraficaView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 22/03/23.
//

import SwiftUI
import Charts

struct GraficaView: View {
    var emociones : [String]
    var emocionesCount:[String:Int] 
    var body: some View {
        GeometryReader{ geo in
            GroupBox("Emociones"){
                Chart{
                    
                    ForEach(emociones,id:\.self) { emocion in
                        BarMark(
                            x:.value("Emociones",emocion ),
                            y:.value("Conteo",(emocionesCount[emocion])!)
                        )
                    
                    }
                }
            }
            
        }
    }
   

}

//
//struct GraficaView_Previews: PreviewProvider {
//    static var previews: some View {
//        GraficaView( emociones: [  ActividadModelo("feliz", "Comer", "10:10"),
//                                   ActividadModelo("enojado", "Pelear", "12:12"),
//                                   ActividadModelo("feliz", "Comer", "10:10"),
//                                   ActividadModelo("feliz", "Comer", "10:10")])
//    }
//}
