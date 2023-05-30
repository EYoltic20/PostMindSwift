//
//  ListaBitacoraView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 21/03/23.
//

import SwiftUI

struct ListaBitacoraView: View {
    let color :UIColor
    let queHice:String
    let emocion:String
    let fecha : Date
//    MARK: - HACER SWITCH CON COLORES
    
    var body: some View {
        GeometryReader{geo in
//            MARK: - Construccion de la vista de la vitacora
            
            VStack(alignment:.center){
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("azul4"))
                    
                    .padding()
                    .overlay{
                        Group{
                            HStack{
                                
                                Text(getEmotion(emocion:emocion))
                                    .font(.system(size: 50))
                                    .padding()
                                
                                VStack(alignment:.trailing){
                                    Text(fecha,format: .dateTime.day().month().year())
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .font(.system(size: 30))
                                        
                                    Text(queHice)
                                        .foregroundColor(.gray)
                                        .font(.title3)
                                        .font(.system(size: 20))
                                        .padding()
                                    
                                }
                                .padding()
                            }.frame(width:geo.size.width)
                        }
                    }
                    
                    
            }
        }
    }
}
func getEmotion(emocion:String)->String{
    switch emocion{
    case "feliz":
        return"☺️"
    case "asco":
        return"🤢"
    default:
        return "./."
    }
}

//Button{
//
//}label: {
//    Text("☺️")
//        .font(.system(size: 60))
//
//}
//Button{
//
//}label: {
//    Text("🤢")
//        .font(.system(size: 60))
//}
//Button{
//
//}label: {
//    Text("😡")
//        .font(.system(size: 60))
//}
//Button{
//
//}label: {
//    Text("🥱")
//        .font(.system(size: 60))
//}
//


struct ListaBitacoraView_Previews: PreviewProvider {
    static var previews: some View {
        ListaBitacoraView(color: .blue, queHice: "Comer", emocion: "10:10",fecha:Date.now)
    }
}

