//
//  File.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

//new to dos are created as an object from this class

import Foundation
import SwiftData

@Model //so that the class below will always be storing data persistently

class ToDoItem {
    var title : String
    var isImportant : Bool
    
    init(title: String, isImportant: Bool = false) {
          self.title = title
          self.isImportant = isImportant
    }
}
