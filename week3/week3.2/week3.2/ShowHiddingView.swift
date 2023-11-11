//
//  ShowHiddingView.swift
//  week3.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 07.11.2023.
//

import SwiftUI

struct SecondView: View {
    
    let name: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("Hello \(name)")
        
        Button("Cancel") {
            dismiss()
        }
    }
}

struct ShowHiddingView: View {
    
    @State private var isShowSheet = false
   
    
    var body: some View {
        Button("Show Sheet") {
            isShowSheet.toggle()
        }
        .sheet(isPresented: $isShowSheet, content: {
            SecondView(name: "Michail")
        })
        
        
    }
}

#Preview {
    ShowHiddingView()
}
