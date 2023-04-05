//
//  TextExtensions.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 04/04/23.
//

import Foundation
import SwiftUI

extension Text{
    func titleFont(_ size: CGFloat? , _ color: Color)->some View{
        
        self
            .font(Font.custom("title", size: size ?? 39))
            .foregroundColor(color)
            .bold()
        
    }
}
extension TextField{
    func textFieldFont(_ size: CGFloat? , _ color: Color)->some View{
        
        self
            .font(Font.custom("title", size: size ?? 39))
            .foregroundColor(color)
            .bold()
        
    }
}
