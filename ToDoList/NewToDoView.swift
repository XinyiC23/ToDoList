//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

//SwiftUI for new to does page

import SwiftUI
import SwiftData

struct NewToDoView: View {
    
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack{
            Text("task title:")
                .font(.headline)
            
            TextField("Enter the task description...", text: $toDoItem.title,axis: .vertical)
            
            Toggle(isOn: $toDoItem.isImportant) {
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
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
