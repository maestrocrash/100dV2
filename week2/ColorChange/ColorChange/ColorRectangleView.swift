//
//  ColorRectangleView.swift
//  ColorChange
//
//  Created by MICHAIL SHAKHVOROSTOV on 04.11.2023.
//

import SwiftUI

struct RectangleColor: View {
    
    @Binding var colorRectangle: Color
    @State private var showingSheet = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 100, height: 100)
            .foregroundStyle(colorRectangle)
            .shadow(color: colorRectangle, radius: 10)
            .onTapGesture {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                CustomPickerView(selectedColor: $colorRectangle)
               // Color.black
                    .presentationDetents([.fraction(0.4)])
            }
            
    }
}
#Preview {
    RectangleColor(colorRectangle: .constant(.blue))
}
