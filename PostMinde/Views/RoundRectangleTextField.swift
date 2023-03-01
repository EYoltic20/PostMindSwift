//
//  RoundRectangleTextField.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 28/02/23.
//

import SwiftUI

struct RoundRectangleTextField: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color("TextFieled"))
    }
}

struct RoundRectangleTextField_Previews: PreviewProvider {
    static var previews: some View {
        RoundRectangleTextField()
    }
}
