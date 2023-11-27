//
//  LongTextField.swift
//  week5.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftUI



struct LongTextField: View {
    
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            //TextEditor(text: $notes)
            
            TextField("Enter your text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    LongTextField()
}
