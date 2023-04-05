//
//  GraficaView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 22/03/23.
//

import SwiftUI
import Charts

struct GraficaView: View {
    var emociones : [ActividadModelo]
    var body: some View {
        GeometryReader{ geo in
            GroupBox("Emociones"){
                Chart{
                    
                ForEach(emociones) { emocion in
                        BarMark(
                            x:.value("Emociones",emocion.emocion ),
                            y:.value("Conteo",  getCountOfEmotion(emociones,emocion.emocion))
                        )
                    
                    }
                }
            }
            
        }
    }
    func getCountOfEmotion(_ emociones: [ActividadModelo],_ emocion: String) ->Int{
        var count = 0
        emociones.forEach{ emotion in
            if (emotion.emocion == emocion){
                count = count + 1
            }
        }
        print(count)
        return count
    }
}

//
struct GraficaView_Previews: PreviewProvider {
    static var previews: some View {
        GraficaView( emociones: [  ActividadModelo("feliz", "Comer", "10:10"),
                                   ActividadModelo("enojado", "Pelear", "12:12"),
                                   ActividadModelo("feliz", "Comer", "10:10"),
                                   ActividadModelo("feliz", "Comer", "10:10")])
    }
}
