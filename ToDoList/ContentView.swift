//
//  ContentView.swift
//  ToDoList
//
//  Created by Sasutski on 7/8/23.
//

import SwiftUI



struct ContentView: View {
    @State var listOfTodos = [
        Task(title: "do homework"),
        Task(title: "do ur swift hw!!!"),
        Task(title: "walk the frog")
    ]

    var body: some View {
        List {
            ForEach($listOfTodos) { $todo in
                HStack {
                    Text(todo.title)
                    Spacer()
                    Button {
                        todo.isDone.toggle()
                    }label: {
                        if todo.isDone {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        } else {
                            Image(systemName: "circle")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
