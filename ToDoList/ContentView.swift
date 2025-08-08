//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
   
    @State private var showNewTask = false

    @Query var toDos: [ToDoItem]
    
    var body: some View {
                
        VStack {
            HStack {
                
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.black)
                
                Spacer()
                
                Button {
                    
                    withAnimation {
                        showNewTask = true
                    }
                    
                } label: {
                    
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }
                
            }//HStack end
            .padding()
            Spacer()
            
            List {
                    ForEach (toDos) { toDoItem in
                            Text(toDoItem.title)
                    }
            }
        }//Vstack end
        if showNewTask == true {
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
        }
    }//body end
}//contentview end

#Preview {
    ContentView()
}
