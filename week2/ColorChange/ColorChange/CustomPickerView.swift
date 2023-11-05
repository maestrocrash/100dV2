//
//  CustomPickerView.swift
//  ColorChange
//
//  Created by MICHAIL SHAKHVOROSTOV on 04.11.2023.
//

import SwiftUI

struct CustomPickerView: View {
    @Binding var selectedColor: Color
    @Environment(\.dismiss) var dismiss
    
    private let colors: [Color] = [.red, .yellow, .orange, .purple, .indigo, .green, .mint, .black, .white, .blue]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(colors, id: \.self) {color in
                    Circle()
                        .foregroundStyle(color)
                        .frame(width: .infinity, height: .infinity)
                        .scaleEffect(color == selectedColor ? 1 : 0.8)
                        .onTapGesture {
                            selectedColor = color
                            dismiss()
                        }
                }
                
                
            }
            .padding(10)
            .frame(width: .infinity, height: .infinity)
            .background(.thinMaterial)
            .clipShape(.rect(cornerRadius: 10))
        }
        
    }
}

#Preview {
    CustomPickerView(selectedColor: .constant(.blue))
}
