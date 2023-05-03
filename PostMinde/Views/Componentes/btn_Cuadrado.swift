//
//  btn_Cuadrado.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 02/05/23.
//

import Foundation
import SwiftUI

struct btnView_Cuadrado: View {
    
    var text : String
    var body: some View {
        GeometryReader{ geo in
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("azul4"))
                .overlay{
                    VStack(alignment:.leading){
                        Text(text)
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                }
                .frame(width: geo.size.width,height:geo.size.height)
            
        }
    }
}

