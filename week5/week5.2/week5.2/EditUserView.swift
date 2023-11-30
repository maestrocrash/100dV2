//
//  EditUserView.swift
//  week5.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 29.11.2023.
//

import SwiftData
import SwiftUI

struct EditUserView: View {
    
    @Bindable var user: User
    
    var body: some View {
        
        Form {
            TextField("Name", text: $user.name)
            TextField("City", text: $user.city)
            
            DatePicker("Join Date", selection: $user.joinData)
        }
        .navigationTitle("Edit User")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: User.self, configurations: config)
        
        let user = User(name: "MIchail", city: "Spb", joinData: .now)
        return EditUserView(user: user)
            .modelContainer(container)
        
    }catch {
        return Text("Text error")
    }
}
