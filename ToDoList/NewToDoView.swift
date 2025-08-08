//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack{
            Text("task title:")
                .font(.headline)
            
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it Important?")
                    .font(.headline)
            }
            
            .padding()
            
            Button {

            } label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.medium)
            }
            
        }//VStack
        .padding()
    }//body
}//view

#Preview {
    NewToDoView()
}
