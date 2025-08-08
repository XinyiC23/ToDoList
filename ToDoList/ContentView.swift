//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
   
    @State private var showNewTask = false

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
        }//Vstack end
        if showNewTask == true {
            NewToDoView()
        }
    }//body end
}//contentview end

#Preview {
    ContentView()
}
