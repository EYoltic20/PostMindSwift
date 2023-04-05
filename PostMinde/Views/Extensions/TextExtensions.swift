//
//  TextExtensions.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 04/04/23.
//

import Foundation
import SwiftUI

extension Text{
    func titleFont(_ size: CGFloat?)->some View{
        
        self
            .font(Font.custom("title", size: size ?? 39))
            .foregroundColor(Color("azul4"))
            .bold()
        
    }
}
