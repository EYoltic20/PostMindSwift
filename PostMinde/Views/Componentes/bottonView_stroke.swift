//
//  bottonView_stroke.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 04/04/23.
//

import SwiftUI

struct bottonView_stroke: View {
    var text : String
    var body: some View {
        Capsule()
            .stroke(Color("azul1"),lineWidth: 3)
            .overlay{
                Text(text)
                    .font(.title)
                    .foregroundColor(Color("azul1"))
                    .bold()
                    
            }
    }
}

struct bottonView_stroke_Previews: PreviewProvider {
    static var previews: some View {
        bottonView_stroke(text: "kk")
    }
}
