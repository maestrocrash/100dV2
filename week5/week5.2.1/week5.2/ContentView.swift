//
//  ContentView.swift
//  week5.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 29.11.2023.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(filter: #Predicate<User> {user in
        //user.name.localizedStandardContains("R") && user.city == "London"
        
        if user.name.localizedStandardContains("R") {
            if user.city == "London" {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
        
    }, sort: \User.name) var users: [User]
    
    var body: some View {
        NavigationStack {
            List(users) {user in
                NavigationLink(value: user) {
                    Text(user.name)
                }
            }
            .navigationTitle("Users")
            .toolbar {
                Button("Add Samples", systemImage: "plus") {
                    try? modelContext.delete(model: User.self)
                    
                    let first = User(name: "Ed Sheran", city: "London", joinData: .now.addingTimeInterval(86400 * -10))
                    let second = User(name: "Rosa Diaz", city: "New York", joinData: .now.addingTimeInterval(86400 * -5))
                    let third = User(name: "Roy Kent", city: "London", joinData: .now.addingTimeInterval(86400 * 5))
                    let fourth = User(name: "Johnny English", city: "London", joinData: .now.addingTimeInterval(86400 * 5))
                    
                    modelContext.insert(first)
                    modelContext.insert(second)
                    modelContext.insert(third)
                    modelContext.insert(fourth)
                    
                }
            }
        }
 
    }
}

#Preview {
    ContentView()
}
