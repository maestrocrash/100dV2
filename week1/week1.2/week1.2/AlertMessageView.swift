//
//  AlertMessageView.swift
//  week1.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 30.10.2023.
//

import SwiftUI

struct AlertMessageView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
            Text("Hello world!")
            
            Button("Show alert") {
                showingAlert = true
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Cancel", role: .destructive) { }
            Button("Delete", role: .cancel) { }
        } message: {
            Text("Message alert")
        }
    }
}

#Preview {
    AlertMessageView()
}
