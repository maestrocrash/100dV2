//
//  ArchiveSwiftObject.swift
//  week3.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 08.11.2023.
//

import SwiftUI

struct UserStruct: Codable {
    let firstName: String
    let lastName: String
}

struct ArchiveSwiftObject: View {
    
    @State private var user = UserStruct(firstName: "Michail", lastName: "Shkhvorostov")
    
    var body: some View {
        
        Button("Save user") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.setValue(data, forKey: "UserData")
            }
        }
        
    }
}

#Preview {
    ArchiveSwiftObject()
}
