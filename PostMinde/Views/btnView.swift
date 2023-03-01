//
//  btnView.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 28/02/23.
//

import SwiftUI

struct btnView: View {
    var text : String
    var body: some View {
        Capsule()
            .fill(Color("azul1"))
            .overlay{
                Text(text)
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    
            }
    }
}

struct btnView_Previews: PreviewProvider {
    static var previews: some View {
        btnView(text: "kk")
    }
}
