//
//  countEmotions.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 25/04/23.
//

import Foundation

func countOfEmotion(_ emociones: [ActividadModelo]) ->[String:Int]{
    var dict:[String:Int] = [:]
    //    emociones.forEach{emotion in
    //        print(emotion)
    //        dict[emotion.emocion,default:0]+=1
    //    }
    for emocion in emociones{
        dict[emocion.emocion,default:0]+=1
    }
    print(dict)
    return dict
}
