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
                    
                }//button ends
                label: {
                    
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }//label ends
                
            }//HStack end
           
            .padding()
            Spacer()//spacing(so the title is on top)
            
            List {
                    ForEach (toDos) {
                        toDoItem in
                        if toDoItem.isImportant {
                            Text("‼️" + toDoItem.title)
                        }else {
                            Text(toDoItem.title)
                            }
                        
                    }
            }//list end
            .listStyle(.plain)
        }//Vstack end
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }
    }//body end
}//contentview end

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
