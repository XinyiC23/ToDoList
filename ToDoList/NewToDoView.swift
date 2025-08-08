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
    
    @Binding var showNewTask: Bool
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
                showNewTask = false
                addToDo()
                
            } label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.medium)
            }
            
        }//VStack
        .padding()
    }//body
    
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        
        modelContext.insert(toDo)
    }
}//view

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
