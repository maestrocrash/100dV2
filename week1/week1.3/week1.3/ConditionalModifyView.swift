//
//  ConditionalModifyView.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct ConditionalModifyView: View {
    @State private var userRedText = false
    
    var body: some View {
        Button("Hello world") {
            userRedText.toggle()
        }
        .foregroundStyle(userRedText ? .red : .blue)
    }
}

#Preview {
    ConditionalModifyView()
}
