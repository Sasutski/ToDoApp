//
//  Task.swift
//  ToDoList
//
//  Created by Sasutski on 7/8/23.
//

import SwiftUI

struct Task: Hashable, Identifiable {
    var title: String
    var isDone: Bool = false
    let id = UUID()
}
