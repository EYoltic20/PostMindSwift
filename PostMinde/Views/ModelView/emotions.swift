//
//  emotions.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 25/04/23.
//

import Foundation
func emotions(_ emotions : [ActividadModelo])->[String]{
    var arrEmotions:[String] = []
    for emotion in emotions{
        if !arrEmotions.contains(emotion.emocion){
            arrEmotions.append(emotion.emocion)
        }
    }
    return arrEmotions
}
