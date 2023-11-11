//
//  ContentView.swift
//  week3.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 07.11.2023.
//

import Observation
import SwiftUI

@Observable //наблюдает за изменением класса
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct ContentView: View {
    
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName)")
            Text("Your last name is \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
