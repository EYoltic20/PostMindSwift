//
//  ActividadModelo.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 21/03/23.
//

import Foundation
import UIKit

struct ActividadModelo:Identifiable{
    let id = UUID()
    let emocion:String
    let actividad:String
    let hora:String
    var  color:() -> UIColor
    init(_ emocion:String,_ actividad: String,_ hora : String){
        self.emocion = emocion
        self.actividad = actividad
        self.hora = hora
        self.color = {
            switch emocion{
            case "feliz":
                return .green
            case "enojado":
                return .red
            default:
                return .gray
            }
        }
    }
    
}

