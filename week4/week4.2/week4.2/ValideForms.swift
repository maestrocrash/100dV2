//
//  ValideForms.swift
//  week4.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 22.11.2023.
//

import SwiftUI

struct ValideForms: View {
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creatimg account..")
                }
            }
            .disabled(disableForm)
        }
    }
}

#Preview {
    ValideForms()
}
