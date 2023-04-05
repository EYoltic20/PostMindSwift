//
//  AddNewTask.swift
//  PostMinde
//
//  Created by Emilio Y Martinez on 22/03/23.
//

import SwiftUI

struct AddNewTask: View {
    @State var newtask = ""
    var body: some View {
        GeometryReader{geo in
            VStack{
                ZStack{
                    
                    TextField("Nueva Tarea",text:$newtask)
                        .textFieldFont(40, .black)
                        
                }
                    
                
            }.frame(width:geo.size.width,height: geo.size.height)
        }
    }
}

struct AddNewTask_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTask()
    }
}
