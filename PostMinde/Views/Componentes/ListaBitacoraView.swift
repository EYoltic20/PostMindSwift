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
//    MARK: - HACER SWITCH CON COLORES
    
    var body: some View {
        GeometryReader{geo in
//            MARK: - Construccion de la vista de la vitacora
            HStack{
                Circle()
                    .fill(Color(color))
                    .frame(width: geo.size.width/10)
                    .padding()
                
                Text(queHice)
                    .font(.body)
                
                Spacer()
                Text(emocion)
                    .foregroundColor(.gray)
                    .padding()
                
            }.frame(width: geo.size.width)
        }
    }
}

struct ListaBitacoraView_Previews: PreviewProvider {
    static var previews: some View {
        ListaBitacoraView(color: .black, queHice: "Comer", emocion: "10:10")
    }
}
