//
//  BindingState.swift
//  week1
//
//  Created by MICHAIL SHAKHVOROSTOV on 25.10.2023.
//

import SwiftUI

struct BindingState: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello \(name)")
        }
    }
}

#Preview {
    BindingState()
}
